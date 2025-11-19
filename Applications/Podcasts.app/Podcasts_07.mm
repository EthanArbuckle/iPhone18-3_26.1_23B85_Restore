uint64_t sub_10018DE88@<X0>(uint64_t *a1@<X8>)
{
  result = static EpisodeUserFilter.allAvailableFilters(seasonNumbers:hasBookmarkedEpisodes:hasSubscriberEpisodes:)();
  *a1 = result;
  return result;
}

uint64_t sub_10018DEC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100168088(&qword_100573A78);
  __chkstk_darwin(v6 - 8);
  v8 = &v21[-v7 - 8];
  v9 = sub_100168088(&unk_100573A80);
  __chkstk_darwin(v9 - 8);
  v11 = &v21[-v10 - 8];
  type metadata accessor for Episode();
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v12 = a1;
  EpisodeListSettings.listType.getter();
  EpisodeListType.wantsListenNowReason.getter();
  sub_100018888(v21);
  result = Episode.__allocating_init(from:clickAction:wantsListenNowReason:)();
  if (result)
  {
    v14 = type metadata accessor for EpisodeListSettings();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v11, a2, v14);
    (*(v15 + 56))(v11, 0, 1, v14);
    v16 = enum case for SectionContext.season(_:);
    v17 = type metadata accessor for SectionContext();
    v18 = *(v17 - 8);
    (*(v18 + 104))(v8, v16, v17);
    (*(v18 + 56))(v8, 0, 1, v17);

    static MetricsDataConfiguration.default.getter();
    v19 = dispatch thunk of Episode.defaultLockup(for:sectionContext:configuration:)();
    v27 = v22;
    sub_100009104(&v27, &unk_100574650);
    v26 = v23;
    sub_100009104(&v26, &unk_100573A90);
    v25 = *(&v23 + 1);
    sub_100009104(&v25, &unk_100574660);
    sub_1000112B4(v24);

    sub_100009104(v8, &qword_100573A78);
    result = sub_100009104(v11, &unk_100573A80);
  }

  else
  {
    v19 = 0;
  }

  *a3 = v19;
  return result;
}

uint64_t sub_10018E1DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v51 = a2;
  v2 = sub_100168088(&qword_100574038);
  __chkstk_darwin(v2 - 8);
  v50 = &v44[-1] - v3;
  v4 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v4 - 8);
  v49 = &v44[-1] - v5;
  v6 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v6 - 8);
  v8 = &v44[-1] - v7;
  v9 = sub_100168088(&qword_100574048);
  __chkstk_darwin(v9 - 8);
  v11 = &v44[-1] - v10;
  v12 = sub_100168088(&unk_100574050);
  __chkstk_darwin(v12 - 8);
  v47 = &v44[-1] - v13;
  v14 = sub_100168088(&qword_100577490);
  __chkstk_darwin(v14 - 8);
  v53 = &v44[-1] - v15;
  v54 = type metadata accessor for ModernShelf.ItemPresentation();
  v48 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v44[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v46 = &v44[-1] - v18;
  EpisodeListSettings.listType.getter();
  if (v61 == 8)
  {
    v19 = v60;
    v20 = v59[2];

    if (!v19)
    {
      v63 = 0x6E6F73616553;
      v64 = 0xE600000000000000;
      v62[0] = v20;
      v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v42);

      v44[0] = v63;
      v44[1] = v64;
      countAndFlagsBits = 0;
      goto LABEL_10;
    }

    v21 = v11;
    v22 = v8;
    sub_10019C1BC(v20, v19);
  }

  else
  {
    v21 = v11;
    v22 = v8;
    sub_100018888(v59);
  }

  sub_100168088(&qword_1005741B8);
  FRPSectionInfo.section.getter();
  v23 = v63;
  v24 = v64;
  v25 = [objc_opt_self() mainBundle];
  if ((v24 & 1) != 0 || !v23)
  {
    v66._object = 0xE000000000000000;
    v30._countAndFlagsBits = 0xD000000000000017;
    v30._object = 0x8000000100466230;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    v66._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, 0, v25, v31, v66)._countAndFlagsBits;

    HIWORD(v44[1]) = -4864;
    strcpy(v44, "UnknownSeason");
  }

  else
  {
    v65._object = 0xE000000000000000;
    v26._object = 0x8000000100466250;
    v26._countAndFlagsBits = 0xD000000000000014;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v65._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v26, 0, v25, v27, v65);

    sub_100168088(&unk_100574670);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100400790;
    *(v28 + 56) = &type metadata for Int64;
    *(v28 + 64) = &protocol witness table for Int64;
    *(v28 + 32) = v23;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();

    v63 = 0x6E6F73616553;
    v64 = 0xE600000000000000;
    v62[0] = v23;

    v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v29);

    v44[0] = v63;
    v44[1] = v64;
  }

  v8 = v22;
  v11 = v21;
LABEL_10:
  ShelfIDBuilder.init(named:)();
  EpisodeListSettings.listType.getter();
  EpisodeListType.description.getter();
  ShelfIDBuilder.addingAttribute(_:named:)();

  sub_100018888(v62);
  sub_100168088(&qword_1005741B8);
  FRPSectionInfo.section.getter();
  if ((v64 & 1) == 0)
  {
    *&v56 = v63;
    sub_10019FFC0();
    BinaryInteger.description.getter();
  }

  ShelfIDBuilder.addingAttribute(_:named:)();

  v43 = ShelfIDBuilder.build()()._countAndFlagsBits;

  EpisodeListSettings.listType.getter();
  EpisodeListType.shelfItemKind.getter();
  sub_100018888(&v63);
  LOBYTE(v56) = 1;
  v32 = v46;
  ModernShelf.ItemPresentation.init(itemKind:orientation:background:horizontalRows:)();
  v33 = type metadata accessor for ActionMenu();
  (*(*(v33 - 8) + 56))(v47, 1, 1, v33);
  v34 = type metadata accessor for Header.PrimaryAction();
  (*(*(v34 - 8) + 56))(v11, 1, 1, v34);
  v35 = type metadata accessor for ArtworkModel();
  (*(*(v35 - 8) + 56))(v8, 1, 1, v35);
  Header.init(title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:primaryAction:artwork:)();
  v36 = v48;
  (*(v48 + 16))(v52, v32, v54);
  v37 = FRPSectionInfo.items.getter();
  v55 = sub_1001A4A7C(v37);

  v38 = type metadata accessor for URL();
  (*(*(v38 - 8) + 56))(v49, 1, 1, v38);
  v58 = 0;
  v56 = 0u;
  v57 = 0u;

  ModernShelf.ItemPresentation.itemKind.getter();
  ModernShelf.ItemKind.targetType.getter();
  v39 = v50;
  static ImpressionMetrics.shelf(id:idType:uniqueID:impressionType:name:)();

  v40 = type metadata accessor for ImpressionMetrics();
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();
  return (*(v36 + 8))(v32, v54);
}

uint64_t sub_10018EB34(uint64_t a1, uint64_t a2, void *a3)
{
  v56 = a2;
  v57 = type metadata accessor for Calendar();
  v55 = *(v57 - 8);
  v58 = *(v55 + 64);
  __chkstk_darwin(v57);
  v54 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EpisodeListSettings();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v46 = v8;
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100168088(&qword_100574228);
  v11 = *(v10 - 8);
  v60 = v10;
  v61 = v11;
  __chkstk_darwin(v10);
  v53 = &v36 - v12;
  v64[0] = 0;
  v64[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(41);

  v62 = 0xD000000000000026;
  v63 = 0x80000001004662D0;
  EpisodeListSettings.listType.getter();
  v13 = EpisodeListType.description.getter();
  v15 = v14;
  sub_100018888(v64);
  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 93;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v52 = v62;
  v51 = v63;
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v18;
  v48 = EpisodeListSettings.predicate.getter();
  v43 = a1;
  EpisodeListSettings.sort.getter();
  v45 = EpisodeSortType.descriptors.getter();
  sub_100009F1C(0, &qword_1005729D0);
  v38 = static OS_dispatch_queue.main.getter();
  v42 = *(v7 + 16);
  v36 = v9;
  v19 = v6;
  v37 = v6;
  v42(v9, a1, v6);
  v20 = *(v7 + 80);
  v44 = v20 | 7;
  v21 = swift_allocObject();
  v47 = *(v7 + 32);
  v47(v21 + ((v20 + 16) & ~v20), v9, v19);
  v40 = type metadata accessor for LibraryEpisodeLockup();
  v22 = a3;
  v39 = sub_100168088(&qword_100574230);
  sub_100009F1C(0, &qword_100573660);
  v41 = sub_1001A02E0(&qword_100574238, &qword_100574230);
  v23 = v53;
  FetchedResultsSectionedPublisher.init(identifier:entityName:predicate:sortDescriptors:pageSize:managedObjectContext:receiveOn:transform:updateRequiredComparator:sectionTransform:)();
  v25 = v54;
  v24 = v55;
  v26 = v57;
  (*(v55 + 16))(v54, v59 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_metricsCalendar, v57);
  v27 = v36;
  v28 = v37;
  v42(v36, v43, v37);
  v29 = v24;
  v30 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v31 = (v58 + v20 + v30) & ~v20;
  v32 = swift_allocObject();
  (*(v29 + 32))(v32 + v30, v25, v26);
  v47(v32 + v31, v27, v28);
  type metadata accessor for ModernShelf();
  sub_100009FAC(&qword_100574240, &qword_100574228);
  v33 = v60;
  v34 = PaginatedPublisher.paginatedSectionMap<A, B, C>(_:)();

  (*(v61 + 8))(v23, v33);
  return v34;
}

uint64_t sub_10018F150@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100168088(&qword_100573A78);
  __chkstk_darwin(v6 - 8);
  v8 = &v19[-v7 - 8];
  v9 = sub_100168088(&unk_100573A80);
  __chkstk_darwin(v9 - 8);
  v11 = &v19[-v10 - 8];
  type metadata accessor for Episode();
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v12 = a1;
  EpisodeListSettings.listType.getter();
  EpisodeListType.wantsListenNowReason.getter();
  sub_100018888(v19);
  result = Episode.__allocating_init(from:clickAction:wantsListenNowReason:)();
  if (result)
  {
    v14 = type metadata accessor for EpisodeListSettings();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v11, a2, v14);
    (*(v15 + 56))(v11, 0, 1, v14);
    v16 = type metadata accessor for SectionContext();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);

    static MetricsDataConfiguration.default.getter();
    v17 = dispatch thunk of Episode.defaultLockup(for:sectionContext:configuration:)();
    v25 = v20;
    sub_100009104(&v25, &unk_100574650);
    v24 = v21;
    sub_100009104(&v24, &unk_100573A90);
    v23 = *(&v21 + 1);
    sub_100009104(&v23, &unk_100574660);
    sub_1000112B4(v22);

    sub_100009104(v8, &qword_100573A78);
    result = sub_100009104(v11, &unk_100573A80);
  }

  else
  {
    v17 = 0;
  }

  *a3 = v17;
  return result;
}

uint64_t sub_10018F42C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100168088(&qword_100574760);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  LegacyEpisodeLockup.releaseDate.getter();
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    result = sub_100009104(v4, &qword_100574760);
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    *a1 = Date.yearString.getter();
    a1[1] = v8;
    return (*(v6 + 8))(v4, v5);
  }

  return result;
}

unint64_t sub_10018F55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a3;
  v64 = a2;
  v75 = a4;
  v5 = sub_100168088(&qword_100574038);
  __chkstk_darwin(v5 - 8);
  v74 = &v59 - v6;
  v7 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v7 - 8);
  v73 = &v59 - v8;
  v9 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v9 - 8);
  v69 = (&v59 - v10);
  v11 = sub_100168088(&qword_100574048);
  __chkstk_darwin(v11 - 8);
  v68 = &v59 - v12;
  v13 = sub_100168088(&unk_100574050);
  __chkstk_darwin(v13 - 8);
  v67 = &v59 - v14;
  v15 = sub_100168088(&qword_100577490);
  __chkstk_darwin(v15 - 8);
  v79 = &v59 - v16;
  v80 = type metadata accessor for ModernShelf.ItemPresentation();
  v72 = *(v80 - 8);
  __chkstk_darwin(v80);
  v70 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v71 = &v59 - v19;
  v63 = type metadata accessor for Calendar.Component();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100168088(&qword_100574760);
  __chkstk_darwin(v21 - 8);
  v23 = &v59 - v22;
  v24 = type metadata accessor for Date();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v60 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v59 - v28;
  v78 = sub_100168088(&qword_100574248);
  v30 = a1;
  FRPSectionInfo.section.getter();
  v32 = v85;
  v31 = v86;
  static Date.now.getter();
  v33 = Date.yearString.getter();
  v35 = v34;
  v59 = *(v25 + 8);
  v59(v29, v24);
  if (!v31)
  {
    if (!v35)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (!v35)
  {
LABEL_7:

    goto LABEL_8;
  }

  if (v32 == v33 && v31 == v35)
  {

LABEL_10:
    countAndFlagsBits = 0;
    object = 0;
    goto LABEL_14;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v40 & 1) == 0)
  {
LABEL_8:
    FRPSectionInfo.section.getter();
    object = v86;
    if (v86)
    {
      countAndFlagsBits = v85;
    }

    else
    {
      v36 = [objc_opt_self() mainBundle];
      v87._object = 0xE000000000000000;
      v37._object = 0x8000000100466270;
      v37._countAndFlagsBits = 0xD000000000000015;
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      v87._countAndFlagsBits = 0;
      v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v87);
      countAndFlagsBits = v39._countAndFlagsBits;
      object = v39._object;
    }

    goto LABEL_14;
  }

  countAndFlagsBits = 0;
  object = 0;
LABEL_14:
  result = FRPSectionInfo.items.getter();
  if (result >> 62)
  {
    v58 = result;
    v42 = _CocoaArrayWrapper.endIndex.getter();
    result = v58;
  }

  else
  {
    v42 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v65 = v30;
  if (!v42)
  {

    (*(v25 + 56))(v23, 1, 1, v24);
LABEL_23:
    sub_100009104(v23, &qword_100574760);
    v47 = 0;
    v48 = 1;
    goto LABEL_24;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  LegacyEpisodeLockup.releaseDate.getter();

  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    goto LABEL_23;
  }

  v43 = v60;
  (*(v25 + 32))(v60, v23, v24);
  v44 = v62;
  v45 = v61;
  v46 = v63;
  (*(v62 + 104))(v61, enum case for Calendar.Component.year(_:), v63);
  v47 = Calendar.component(_:from:)();
  (*(v44 + 8))(v45, v46);
  v59(v43, v24);
  v48 = 0;
LABEL_24:
  ShelfIDBuilder.init(named:)();
  EpisodeListSettings.listType.getter();
  EpisodeListType.description.getter();
  ShelfIDBuilder.addingAttribute(_:named:)();

  sub_100018888(v84);
  if ((v48 & 1) == 0)
  {
    v85 = v47;
    sub_1001A0058();
    BinaryInteger.description.getter();
  }

  ShelfIDBuilder.addingAttribute(_:named:)();

  v78 = ShelfIDBuilder.build()()._countAndFlagsBits;

  if (v48)
  {
    v76 = 0x6E6B6E5565746144;
  }

  else
  {
    v85 = v47;
    sub_1001A0058();
    v76 = BinaryInteger.description.getter();
  }

  EpisodeListSettings.listType.getter();
  EpisodeListType.shelfItemKind.getter();
  sub_100018888(&v85);
  LOBYTE(v81) = 1;
  v49 = v71;
  ModernShelf.ItemPresentation.init(itemKind:orientation:background:horizontalRows:)();
  v50 = type metadata accessor for ActionMenu();
  (*(*(v50 - 8) + 56))(v67, 1, 1, v50);
  v51 = type metadata accessor for Header.PrimaryAction();
  (*(*(v51 - 8) + 56))(v68, 1, 1, v51);
  v52 = type metadata accessor for ArtworkModel();
  (*(*(v52 - 8) + 56))(v69, 1, 1, v52);

  Header.init(title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:primaryAction:artwork:)();
  v53 = v72;
  (*(v72 + 16))(v70, v49, v80);
  v54 = FRPSectionInfo.items.getter();
  v69 = sub_1001A4A7C(v54);

  v55 = type metadata accessor for URL();
  (*(*(v55 - 8) + 56))(v73, 1, 1, v55);
  v83 = 0;
  v82 = 0u;
  v81 = 0u;

  ModernShelf.ItemPresentation.itemKind.getter();
  ModernShelf.ItemKind.targetType.getter();
  v56 = v74;
  static ImpressionMetrics.shelf(id:idType:uniqueID:impressionType:name:)();

  v57 = type metadata accessor for ImpressionMetrics();
  (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
  ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();
  return (*(v53 + 8))(v49, v80);
}

uint64_t sub_100190210@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result)
  {
    result = MTPodcast.episodeSortType.getter();
  }

  *a2 = result;
  return result;
}

uint64_t sub_100190240(uint64_t a1, uint64_t a2, char a3)
{

  sub_1001A05DC(a2, a3);
  return EpisodeListSettings.init(_:sort:pubDateLimit:hidePlayedEpisodes:hideTrailers:hideVideoEpisodes:hideUnentitledContent:)();
}

uint64_t sub_1001902C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  EpisodeListSettings.sort.getter();
  if (EpisodeSortType.isSerialSort.getter())
  {
    sub_10019C60C(a1, a2, a3);
  }

  else
  {
    sub_10018EB34(a1, a2, a3);
  }

  sub_100168088(&unk_100574090);
  sub_100168088(&qword_100574108);
  sub_100168088(&qword_1005740B0);
  sub_100009FAC(&qword_1005740A0, &unk_100574090);
  PaginatedPublisher.paginatedFRPOutputMap<A, B>(_:)();
  sub_100168088(&qword_1005740A8);
  sub_100168088(&unk_10057FAC0);
  *(swift_allocObject() + 16) = xmmword_100400790;
  FRPOutput.init(content:hasMore:totalCount:)();
  sub_100168088(&qword_10057FA80);
  sub_100009FAC(&qword_100573C50, &qword_10057FA80);
  v8 = PaginatedPublisher.paginatedPrepend(_:)();

  *a4 = v8;
  return result;
}

uint64_t sub_100190528(uint64_t a1)
{
  v2 = sub_100168088(&qword_1005740D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - v4;
  if ((EpisodeListType.shouldMatchShowSorting.getter() & 1) != 0 && (EpisodeListType.libraryShowUUID.getter(), v6))
  {
    v7 = sub_1001907D8();
  }

  else if (*(a1 + 64) == 5)
  {
    v8 = sub_1001907D8();
    v10 = v8;
    v11 = sub_1001922D8();
    v12 = v8;
    v13[0] = v11;
    sub_100168088(&qword_100574120);
    sub_100168088(&qword_100573C68);
    sub_100009FAC(&qword_100574128, &qword_100574120);
    sub_100009FAC(&qword_100573C78, &qword_100573C68);
    Publisher.combineLatest<A, B>(_:_:)();
    sub_100009FAC(&qword_100574130, &qword_1005740D8);
    v7 = Publisher.eraseToAnyPublisher()();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    LibraryDataProvider.libraryActionController.getter(v13);
    sub_1000044A0(v13, v13[3]);
    v7 = dispatch thunk of LibraryActionControllerProtocol.episodeSortTypePublisher(forListType:)();
    sub_100004590(v13);
  }

  return v7;
}

uint64_t sub_1001907D8()
{
  v1 = sub_100168088(&qword_100574208);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v17 - v3;
  v5 = sub_100168088(&qword_100574210);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  v17[3] = "stationSortPublisher";
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17[1] = v10;
  v17[2] = v9;
  v11 = objc_opt_self();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 predicateForPodcastUUID:v12];

  v14 = [*(v0 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  sub_100009F1C(0, &qword_1005729D0);
  static OS_dispatch_queue.main.getter();
  sub_100009F1C(0, &qword_100573AC0);
  FetchedResultsSingleItemPublisher.init(identifier:entityName:predicate:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();
  sub_100009FAC(&qword_100574218, &qword_100574208);
  Publisher.map<A>(_:)();
  (*(v2 + 8))(v4, v1);
  sub_100009FAC(&qword_100574220, &qword_100574210);
  v15 = Publisher.eraseToAnyPublisher()();
  (*(v6 + 8))(v8, v5);
  return v15;
}

uint64_t sub_100190B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    sub_100190D7C(a1, a2, a3);

    sub_100168088(&unk_100574090);
    sub_100168088(&unk_10057FAC0);
    sub_100009FAC(&qword_1005740A0, &unk_100574090);
    PaginatedPublisher.paginatedMap<A>(_:)();

    sub_100168088(&qword_1005740A8);
    *(swift_allocObject() + 16) = xmmword_100400790;
    sub_100168088(&qword_1005740B0);
    FRPOutput.init(content:hasMore:totalCount:)();
    sub_100168088(&qword_10057FA80);
    sub_100009FAC(&qword_100573C50, &qword_10057FA80);
    v10 = PaginatedPublisher.paginatedPrepend(_:)();
  }

  else
  {
    v10 = 0;
  }

  *a4 = v10;
  return result;
}

id sub_100190D7C(uint64_t a1, uint64_t a2, void *a3)
{
  v141 = a3;
  v147 = a2;
  ObjectType = swift_getObjectType();
  v4 = sub_100168088(&qword_1005740C0);
  v130 = *(v4 - 8);
  v131 = v4;
  __chkstk_darwin(v4);
  v129 = &v115 - v5;
  v135 = sub_100168088(&qword_1005740C8);
  v133 = *(v135 - 8);
  __chkstk_darwin(v135);
  v132 = &v115 - v6;
  v7 = sub_100168088(&qword_1005740D0);
  v136 = *(v7 - 8);
  v137 = v7;
  __chkstk_darwin(v7);
  v134 = &v115 - v8;
  v9 = sub_100168088(&qword_1005740D8);
  v127 = *(v9 - 8);
  v128 = v9;
  __chkstk_darwin(v9);
  v126 = &v115 - v10;
  v11 = sub_100168088(&qword_1005740E0);
  v124 = *(v11 - 8);
  v125 = v11;
  __chkstk_darwin(v11);
  v123 = &v115 - v12;
  v13 = sub_100168088(&qword_1005740E8);
  v139 = *(v13 - 8);
  v140 = v13;
  __chkstk_darwin(v13);
  v138 = &v115 - v14;
  v15 = type metadata accessor for EpisodeListSettings();
  v145 = *(v15 - 8);
  v146 = v15;
  v16 = *(v145 + 64);
  __chkstk_darwin(v15);
  v144 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100168088(&qword_100573AB8);
  v120 = *(v17 - 8);
  v121 = v17;
  __chkstk_darwin(v17);
  v119 = &v115 - v18;
  v19 = sub_100168088(&unk_1005740F0);
  __chkstk_darwin(v19 - 8);
  v21 = &v115 - v20;
  v22 = type metadata accessor for ShowLockupStyle();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v25 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v142 = &v115 - v27;
  EpisodeListSettings.listType.getter();
  EpisodeListSettings.hidePlayedEpisodes.getter();
  v28 = EpisodeListType.groupedShowListType(hidePlayedEpisodes:)();
  v30 = v29;
  sub_100018888(&v150);
  if ((v30 & 0x100) != 0)
  {
LABEL_4:
    EpisodeListSettings.listType.getter();
    v31 = a1;
    if (v153 == 3)
    {
      type metadata accessor for CoreDataFetcher();
      sub_100009F1C(0, &qword_1005729D0);
      v32 = static OS_dispatch_queue.main.getter();
      v33 = static CoreDataFetcher.performAndPublishOnPodcast<A>(with:queue:block:)();
      sub_100018888(&v152);

      v154[0] = v33;
      v34 = v145;
      v35 = v16;
      v36 = v144;
      v37 = v31;
      v38 = v146;
      (*(v145 + 16))(v144, v37, v146);
      v39 = (*(v34 + 80) + 24) & ~*(v34 + 80);
      v40 = (v35 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
      v41 = swift_allocObject();
      v42 = v143;
      *(v41 + 16) = v143;
      (*(v34 + 32))(v41 + v39, v36, v38);
      *(v41 + v40) = v147;
      v43 = v141;
      *(v41 + ((v40 + 15) & 0xFFFFFFFFFFFFFFF8)) = v141;
      v44 = v42;
      v45 = v43;
      sub_100168088(&qword_100574160);
      sub_100168088(&unk_100574090);
      sub_100009FAC(&qword_100574168, &qword_100574160);
      v46 = v138;
      Publisher.map<A>(_:)();

      sub_100009FAC(&unk_100574170, &qword_1005740E8);
      sub_100009FAC(&qword_1005740A0, &unk_100574090);
      v47 = v140;
      v48 = Publisher<>.paginatedSwitchToLatest()();
      (*(v139 + 8))(v46, v47);
    }

    else
    {
      sub_100018888(&v152);
      EpisodeListSettings.listType.getter();
      if (v155 == 5)
      {
        v50 = v154[6];
        v49 = v154[7];
        v139 = v154[1];
        v140 = v16;
        v51 = v154[0];

        v142 = "stationDetailEpisodesPublisher ";
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v121 = v53;
        ObjectType = v52;
        v54 = objc_opt_self();
        v138 = v51;
        v55 = String._bridgeToObjectiveC()();
        v56 = [v54 predicateForStationUUID:v55];

        sub_100009F1C(0, &qword_1005729D0);
        static OS_dispatch_queue.main.getter();
        v57 = swift_allocObject();
        *(v57 + 16) = v50;
        *(v57 + 24) = v49;
        sub_100009F1C(0, &qword_1005751F0);
        v118 = v31;
        sub_100009F1C(0, &qword_100573CE0);
        v141 = v141;

        v58 = v123;
        FetchedResultsSingleItemPublisher.init(identifier:entityName:predicate:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();
        sub_100009FAC(&qword_100574118, &qword_1005740E0);
        v59 = v125;
        v142 = Publisher.eraseToAnyPublisher()();
        (*(v124 + 8))(v58, v59);
        v60 = sub_1001907D8();

        v61 = sub_1001922D8();
        v148 = v60;
        v149 = v61;
        sub_100168088(&qword_100574120);
        sub_100168088(&qword_100573C68);
        sub_100009FAC(&qword_100574128, &qword_100574120);
        sub_100009FAC(&qword_100573C78, &qword_100573C68);
        v62 = v126;
        Publisher.combineLatest<A, B>(_:_:)();
        sub_100009FAC(&qword_100574130, &qword_1005740D8);
        v63 = v128;
        v64 = Publisher.eraseToAnyPublisher()();
        v143 = v64;

        (*(v127 + 8))(v62, v63);
        v148 = v64;
        v149 = v142;
        sub_100168088(&qword_100574138);
        sub_100009FAC(&qword_100574140, &qword_100574138);
        v65 = v129;
        Publisher.combineLatest<A>(_:)();
        sub_100009FAC(&qword_100574148, &qword_1005740C0);
        v67 = v131;
        v66 = v132;
        Publisher.removeDuplicates(by:)();
        (*(v130 + 8))(v65, v67);
        v69 = v144;
        v68 = v145;
        v70 = v146;
        (*(v145 + 16))(v144, v118, v146);
        v71 = (*(v68 + 80) + 16) & ~*(v68 + 80);
        v72 = (v140 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
        v73 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
        v74 = swift_allocObject();
        (*(v68 + 32))(v74 + v71, v69, v70);
        *(v74 + v72) = v147;
        v75 = v141;
        *(v74 + v73) = v141;
        v76 = (v74 + ((v73 + 15) & 0xFFFFFFFFFFFFFFF8));
        v77 = v139;
        *v76 = v138;
        v76[1] = v77;
        v78 = swift_allocObject();
        *(v78 + 16) = sub_10019FD34;
        *(v78 + 24) = v74;
        v79 = v75;
        sub_100168088(&unk_100574090);
        sub_100009FAC(&qword_100574150, &qword_1005740C8);
        v81 = v134;
        v80 = v135;
        Publisher.compactMap<A>(_:)();

        (*(v133 + 8))(v66, v80);
        sub_100009FAC(&qword_100574158, &qword_1005740D0);
        sub_100009FAC(&qword_1005740A0, &unk_100574090);
        v82 = v137;
        v83 = Publisher<>.paginatedSwitchToLatest()();
        (*(v136 + 8))(v81, v82);
        v149 = v83;
        v48 = PaginatedPublisher.paginatedBufferedMulticast()();
      }

      else
      {
        sub_100018888(v154);
        sub_10000F084(&unk_10057AFE0, type metadata accessor for LibraryDataProvider);
        v149 = LibraryDataProviderProtocol.episodeListPublisher(settings:pageSize:)();
        v91 = v144;
        v90 = v145;
        v92 = v146;
        (*(v145 + 16))(v144, a1, v146);
        v93 = (*(v90 + 80) + 16) & ~*(v90 + 80);
        v94 = swift_allocObject();
        (*(v90 + 32))(v94 + v93, v91, v92);
        sub_100168088(&qword_100574100);
        sub_100168088(&qword_100573A70);
        sub_100168088(&qword_100574108);
        sub_100009FAC(&qword_100574110, &qword_100574100);
        v48 = PaginatedPublisher.paginatedFRPOutputMap<A, B>(_:)();
      }
    }

    return v48;
  }

  v117 = v28;
  EpisodeListSettings.listType.getter();
  EpisodeListSettings.hidePlayedEpisodes.getter();
  EpisodeListType.groupedShowLockupStyle(hidePlayedEpisodes:)();
  sub_100018888(&v151);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_100009104(v21, &unk_1005740F0);
    goto LABEL_4;
  }

  v116 = v23;
  v85 = *(v23 + 32);
  v84 = v23 + 32;
  v115 = v85;
  v85(v142, v21, v22);
  v118 = a1;
  EpisodeListSettings.sort.getter();
  v86 = EpisodeSortType.rawValue.getter();
  v88 = v87;
  if (v86 == EpisodeSortType.rawValue.getter() && v88 == v89)
  {

    goto LABEL_14;
  }

  v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v95 & 1) == 0)
  {
    (*(v116 + 8))(v142, v22);
    a1 = v118;
    goto LABEL_4;
  }

LABEL_14:
  v139 = v84;
  v140 = v16;
  v96 = v117;
  v97 = sub_100029130(v117, v30 & 1);
  v137 = v98;
  v138 = v97;
  v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v135 = v100;
  v136 = v99;
  LODWORD(v141) = v30 & 1;
  v134 = sub_10002929C(v96, v30 & 1);
  result = [objc_opt_self() sortDescriptorsForSortType:3];
  if (result)
  {
    v102 = result;
    sub_100009F1C(0, &qword_10057B1F0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v103 = [*&v143[OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider] privateQueueContext];
    sub_100009F1C(0, &qword_1005729D0);
    static OS_dispatch_queue.main.getter();
    v104 = v116;
    (*(v116 + 16))(v25, v142, v22);
    v105 = (*(v104 + 80) + 16) & ~*(v104 + 80);
    v106 = swift_allocObject();
    v115(v106 + v105, v25, v22);
    type metadata accessor for LibraryShowLockup();
    sub_100009F1C(0, &qword_100573AC0);
    v107 = v119;
    FetchedResultsListPublisher.init(identifier:entityName:predicate:sortDescriptors:pageSize:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();
    sub_100009FAC(&qword_100573AC8, &qword_100573AB8);
    v108 = v121;
    v109 = PaginatedPublisher.eraseToAnyPaginatedPublisher()();
    (*(v120 + 8))(v107, v108);
    v154[0] = v109;
    v111 = v144;
    v110 = v145;
    v112 = v146;
    (*(v145 + 16))(v144, v118, v146);
    v113 = (*(v110 + 80) + 25) & ~*(v110 + 80);
    v114 = swift_allocObject();
    *(v114 + 16) = v117;
    *(v114 + 24) = v141;
    (*(v110 + 32))(v114 + v113, v111, v112);
    sub_100168088(&qword_100574180);
    sub_100168088(&qword_100573AA0);
    sub_100168088(&qword_100574108);
    sub_100009FAC(&qword_100574188, &qword_100574180);
    v48 = PaginatedPublisher.paginatedFRPOutputMap<A, B>(_:)();

    (*(v104 + 8))(v142, v22);
    return v48;
  }

  __break(1u);
  return result;
}

uint64_t sub_100192258()
{
  sub_100168088(&qword_1005740B8);
  sub_100168088(&qword_1005740B0);
  return FRPOutput.map<A>(_:)();
}

uint64_t sub_1001922D8()
{
  v1 = sub_100168088(&qword_1005741F0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 predicateForStationUUID:v6];

  v8 = [*(v0 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_managedContextProvider) privateQueueContext];
  sub_100009F1C(0, &qword_1005729D0);
  static OS_dispatch_queue.main.getter();
  type metadata accessor for StationSortOrder();
  sub_100009F1C(0, &qword_100573CE0);
  FetchedResultsSingleItemPublisher.init(identifier:entityName:predicate:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();
  sub_100009FAC(&qword_1005741F8, &qword_1005741F0);
  v9 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v4, v1);
  return v9;
}

uint64_t sub_100192538@<X0>(uint64_t a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_100168088(&qword_100574080);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *a2;
  sub_100010430(a1, &v14 - v7, &qword_100574080);
  v10 = type metadata accessor for StationSortOrder();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    result = sub_100009104(v8, &qword_100574080);
  }

  else
  {
    v13 = StationSortOrder.episodeSort.getter();
    result = (*(v11 + 8))(v8, v10);
    if (v13 != 17)
    {
      v9 = v13;
    }
  }

  *a3 = v9;
  return result;
}

uint64_t sub_100192690@<X0>(_BYTE *a1@<X8>)
{
  result = MTPodcast.episodeSortType.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001926BC()
{
  v0 = EpisodeSortType.rawValue.getter();
  v2 = v1;
  if (v0 == EpisodeSortType.rawValue.getter() && v2 == v3)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

unsigned __int8 *sub_100192758@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 == 17)
  {
    LOBYTE(v2) = 2;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_100192770(void *a1)
{
  [a1 containerOrder];

  return StationSortOrder.init(rawValue:)();
}

BOOL sub_1001927B0()
{
  type metadata accessor for StationSortOrder();
  sub_10000F084(&qword_100574200, &type metadata accessor for StationSortOrder);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

uint64_t sub_10019283C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100168088(&qword_100573A78);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_100168088(&unk_100573A80);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  type metadata accessor for Episode();
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v12 = a1;
  result = Episode.__allocating_init(from:clickAction:wantsListenNowReason:)();
  if (result)
  {
    v14 = type metadata accessor for EpisodeListSettings();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v11, a2, v14);
    (*(v15 + 56))(v11, 0, 1, v14);
    v16 = enum case for SectionContext.season(_:);
    v17 = type metadata accessor for SectionContext();
    v18 = *(v17 - 8);
    (*(v18 + 104))(v8, v16, v17);
    (*(v18 + 56))(v8, 0, 1, v17);

    static MetricsDataConfiguration.default.getter();
    v19 = dispatch thunk of Episode.defaultLockup(for:sectionContext:configuration:)();
    v25 = v20;
    sub_100009104(&v25, &unk_100574650);
    v24 = v21;
    sub_100009104(&v24, &unk_100573A90);
    v23 = *(&v21 + 1);
    sub_100009104(&v23, &unk_100574660);
    sub_1000112B4(v22);

    sub_100009104(v8, &qword_100573A78);
    result = sub_100009104(v11, &unk_100573A80);
  }

  else
  {
    v19 = 0;
  }

  *a3 = v19;
  return result;
}

uint64_t sub_100192B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v5 = sub_100168088(&qword_100574038);
  __chkstk_darwin(v5 - 8);
  v53 = v46 - v6;
  v7 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v7 - 8);
  v52 = v46 - v8;
  v9 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v9 - 8);
  v11 = v46 - v10;
  v12 = sub_100168088(&qword_100574048);
  __chkstk_darwin(v12 - 8);
  v48 = v46 - v13;
  v14 = sub_100168088(&unk_100574050);
  __chkstk_darwin(v14 - 8);
  v47 = v46 - v15;
  v16 = sub_100168088(&qword_100577490);
  __chkstk_darwin(v16 - 8);
  v18 = v46 - v17;
  v50 = type metadata accessor for ModernShelf.ItemPresentation();
  v19 = *(v50 - 8);
  __chkstk_darwin(v50);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v46 - v23;
  ShelfIDBuilder.init(named:)();
  v49 = a2;
  EpisodeListSettings.listType.getter();
  EpisodeListType.description.getter();
  ShelfIDBuilder.addingAttribute(_:named:)();

  sub_100018888(v59);
  v55 = sub_100168088(&qword_1005741B8);
  FRPSectionInfo.section.getter();
  if ((v61 & 1) == 0)
  {
    *&v56 = v60;
    sub_10019FFC0();
    BinaryInteger.description.getter();
  }

  ShelfIDBuilder.addingAttribute(_:named:)();

  v25 = ShelfIDBuilder.build()();
  v46[6] = v25._countAndFlagsBits;
  v46[5] = v25._object;

  v51 = a1;
  FRPSectionInfo.section.getter();
  v26 = v60;
  v27 = v61;
  v28 = [objc_opt_self() mainBundle];
  if ((v27 & 1) != 0 || !v26)
  {
    v65._object = 0xE000000000000000;
    v35._countAndFlagsBits = 0xD000000000000017;
    v35._object = 0x8000000100466230;
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    v65._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v35, 0, v28, v36, v65);

    v46[4] = 0xED00006E6F736165;
    v33 = 0x536E776F6E6B6E55;
    v34 = &v62;
  }

  else
  {
    v64._object = 0xE000000000000000;
    v29._object = 0x8000000100466250;
    v29._countAndFlagsBits = 0xD000000000000014;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    v64._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v28, v30, v64);

    sub_100168088(&unk_100574670);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100400790;
    *(v31 + 56) = &type metadata for Int64;
    *(v31 + 64) = &protocol witness table for Int64;
    *(v31 + 32) = v26;
    static String.localizedStringWithFormat(_:_:)();

    v60 = 0x6E6F73616553;
    v61 = 0xE600000000000000;
    *&v56 = v26;

    v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v32);

    v33 = v61;
    v46[3] = v60;
    v34 = &v63;
  }

  *(v34 - 32) = v33;
  v46[1] = v18;
  v46[2] = v21;
  EpisodeListSettings.listType.getter();
  EpisodeListType.shelfItemPresentation.getter();
  sub_100018888(&v60);
  v37 = type metadata accessor for ActionMenu();
  (*(*(v37 - 8) + 56))(v47, 1, 1, v37);
  v38 = type metadata accessor for Header.PrimaryAction();
  (*(*(v38 - 8) + 56))(v48, 1, 1, v38);
  v39 = type metadata accessor for ArtworkModel();
  (*(*(v39 - 8) + 56))(v11, 1, 1, v39);
  Header.init(title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:primaryAction:artwork:)();
  v40 = v50;
  (*(v19 + 16))(v21, v24, v50);
  v41 = FRPSectionInfo.items.getter();
  v55 = sub_1001A4A7C(v41);

  v42 = type metadata accessor for URL();
  (*(*(v42 - 8) + 56))(v52, 1, 1, v42);
  v58 = 0;
  v57 = 0u;
  v56 = 0u;

  ModernShelf.ItemPresentation.itemKind.getter();
  ModernShelf.ItemKind.targetType.getter();
  v43 = v53;
  static ImpressionMetrics.shelf(id:idType:uniqueID:impressionType:name:)();

  v44 = type metadata accessor for ImpressionMetrics();
  (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
  ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();
  return (*(v19 + 8))(v24, v40);
}

uint64_t sub_10019346C(uint64_t a1, uint64_t a2, void *a3)
{
  v44 = a3;
  v47 = a2;
  v48 = type metadata accessor for Calendar();
  v46 = *(v48 - 8);
  v49 = *(v46 + 64);
  __chkstk_darwin(v48);
  v45 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EpisodeListSettings();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v36 = v7;
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100168088(&qword_1005741C8);
  v10 = *(v9 - 8);
  v51 = v9;
  v52 = v10;
  __chkstk_darwin(v9);
  v53 = &v30 - v11;
  v56[0] = 0;
  v56[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v54 = 0xD00000000000001ALL;
  v55 = 0x8000000100466210;
  EpisodeListSettings.listType.getter();
  v12._countAndFlagsBits = EpisodeListType.description.getter();
  String.append(_:)(v12);

  sub_100018888(v56);
  v43 = v54;
  v42 = v55;
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v13;
  v39 = EpisodeListSettings.predicate.getter();
  v33 = a1;
  EpisodeListSettings.sort.getter();
  v35 = EpisodeSortType.descriptors.getter();
  sub_100009F1C(0, &qword_1005729D0);
  v32 = static OS_dispatch_queue.main.getter();
  v14 = *(v6 + 16);
  v31 = v5;
  v14(v8, a1, v5);
  v15 = *(v6 + 80);
  v34 = v15 | 7;
  v16 = swift_allocObject();
  v38 = *(v6 + 32);
  v38(v16 + ((v15 + 16) & ~v15), v8, v5);
  v37 = type metadata accessor for LibraryEpisodeLockup();
  sub_100009F1C(0, &qword_100573660);
  v17 = v44;
  FetchedResultsSectionedPublisher.init(identifier:entityName:predicate:sortDescriptors:pageSize:managedObjectContext:receiveOn:transform:updateRequiredComparator:sectionTransform:)();
  v19 = v45;
  v18 = v46;
  v20 = v48;
  (*(v46 + 16))(v45, v50 + OBJC_IVAR____TtC8Podcasts19LibraryDataProvider_metricsCalendar, v48);
  v21 = v31;
  v14(v8, v33, v31);
  v22 = v18;
  v23 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v24 = (v49 + v15 + v23) & ~v15;
  v25 = swift_allocObject();
  (*(v22 + 32))(v25 + v23, v19, v20);
  v38(v25 + v24, v8, v21);
  type metadata accessor for ModernShelf();
  sub_100009FAC(&unk_1005741D0, &qword_1005741C8);
  v26 = v51;
  v27 = v53;
  v28 = PaginatedPublisher.paginatedSectionMap<A, B, C>(_:)();

  (*(v52 + 8))(v27, v26);
  return v28;
}

uint64_t sub_100193A1C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100168088(&qword_100573A78);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_100168088(&unk_100573A80);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  type metadata accessor for Episode();
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v12 = a1;
  result = Episode.__allocating_init(from:clickAction:wantsListenNowReason:)();
  if (result)
  {
    v14 = type metadata accessor for EpisodeListSettings();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v11, a2, v14);
    (*(v15 + 56))(v11, 0, 1, v14);
    v16 = type metadata accessor for SectionContext();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);

    static MetricsDataConfiguration.default.getter();
    v17 = dispatch thunk of Episode.defaultLockup(for:sectionContext:configuration:)();
    v23 = v18;
    sub_100009104(&v23, &unk_100574650);
    v22 = v19;
    sub_100009104(&v22, &unk_100573A90);
    v21 = *(&v19 + 1);
    sub_100009104(&v21, &unk_100574660);
    sub_1000112B4(v20);

    sub_100009104(v8, &qword_100573A78);
    result = sub_100009104(v11, &unk_100573A80);
  }

  else
  {
    v17 = 0;
  }

  *a3 = v17;
  return result;
}

void sub_100193CD0(uint64_t *a1@<X8>)
{
  v2 = sub_100168088(&qword_100574760);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  LegacyEpisodeLockup.releaseDate.getter();
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100009104(v4, &qword_100574760);
LABEL_4:
    v10 = [objc_opt_self() mainBundle];
    v15._object = 0xE000000000000000;
    v11._object = 0x8000000100466270;
    v11._countAndFlagsBits = 0xD000000000000015;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    v15._countAndFlagsBits = 0;
    v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v15);
    countAndFlagsBits = v13._countAndFlagsBits;
    object = v13._object;

    goto LABEL_5;
  }

  countAndFlagsBits = Date.yearString.getter();
  object = v8;
  (*(v6 + 8))(v4, v5);
  if (!object)
  {
    goto LABEL_4;
  }

LABEL_5:
  *a1 = countAndFlagsBits;
  a1[1] = object;
}

unint64_t sub_100193E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a3;
  v63 = a4;
  v6 = sub_100168088(&qword_100574038);
  __chkstk_darwin(v6 - 8);
  v62 = &v49 - v7;
  v8 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v8 - 8);
  v61 = &v49 - v9;
  v10 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v10 - 8);
  v57 = (&v49 - v11);
  v12 = sub_100168088(&qword_100574048);
  __chkstk_darwin(v12 - 8);
  v56 = &v49 - v13;
  v14 = sub_100168088(&unk_100574050);
  __chkstk_darwin(v14 - 8);
  v54 = &v49 - v15;
  v16 = sub_100168088(&qword_100577490);
  __chkstk_darwin(v16 - 8);
  v65 = &v49 - v17;
  v66 = type metadata accessor for ModernShelf.ItemPresentation();
  v59 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v58 = &v49 - v20;
  v21 = type metadata accessor for Calendar.Component();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100168088(&qword_100574760);
  __chkstk_darwin(v25 - 8);
  v27 = &v49 - v26;
  v28 = type metadata accessor for Date();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_1005741E0);
  v60 = a1;
  result = FRPSectionInfo.items.getter();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    (*(v29 + 56))(v27, 1, 1, v28);
LABEL_10:
    sub_100009104(v27, &qword_100574760);
    v33 = 0;
    v34 = 1;
    goto LABEL_11;
  }

  v35 = a2;
  v36 = result;
  v37 = _CocoaArrayWrapper.endIndex.getter();
  result = v36;
  a2 = v35;
  if (!v37)
  {
    goto LABEL_9;
  }

LABEL_3:
  countAndFlagsBits = a2;
  if ((result & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  LegacyEpisodeLockup.releaseDate.getter();

  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    goto LABEL_10;
  }

  (*(v29 + 32))(v31, v27, v28);
  (*(v22 + 104))(v24, enum case for Calendar.Component.year(_:), v21);
  v33 = Calendar.component(_:from:)();
  (*(v22 + 8))(v24, v21);
  (*(v29 + 8))(v31, v28);
  v34 = 0;
LABEL_11:
  ShelfIDBuilder.init(named:)();
  EpisodeListSettings.listType.getter();
  EpisodeListType.description.getter();
  ShelfIDBuilder.addingAttribute(_:named:)();

  sub_100018888(v70);
  if ((v34 & 1) == 0)
  {
    v71 = v33;
    sub_1001A0058();
    BinaryInteger.description.getter();
  }

  ShelfIDBuilder.addingAttribute(_:named:)();

  v38 = ShelfIDBuilder.build()();
  countAndFlagsBits = v38._countAndFlagsBits;
  object = v38._object;

  if (v34)
  {
    v51 = 0xEB000000006E776FLL;
    v50 = 0x6E6B6E5565746144;
  }

  else
  {
    v71 = v33;
    sub_1001A0058();
    v50 = BinaryInteger.description.getter();
    v51 = v39;
  }

  EpisodeListSettings.listType.getter();
  v40 = v58;
  EpisodeListType.shelfItemPresentation.getter();
  sub_100018888(&v71);
  FRPSectionInfo.section.getter();
  v41 = type metadata accessor for ActionMenu();
  (*(*(v41 - 8) + 56))(v54, 1, 1, v41);
  v42 = type metadata accessor for Header.PrimaryAction();
  (*(*(v42 - 8) + 56))(v56, 1, 1, v42);
  v43 = type metadata accessor for ArtworkModel();
  (*(*(v43 - 8) + 56))(v57, 1, 1, v43);
  Header.init(title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:primaryAction:artwork:)();
  v44 = v59;
  (*(v59 + 16))(v64, v40, v66);
  v45 = FRPSectionInfo.items.getter();
  v57 = sub_1001A4A7C(v45);

  v46 = type metadata accessor for URL();
  (*(*(v46 - 8) + 56))(v61, 1, 1, v46);
  v69 = 0;
  v68 = 0u;
  v67 = 0u;

  ModernShelf.ItemPresentation.itemKind.getter();
  ModernShelf.ItemKind.targetType.getter();
  FRPSectionInfo.section.getter();
  v47 = v62;
  static ImpressionMetrics.shelf(id:idType:uniqueID:impressionType:name:)();

  v48 = type metadata accessor for ImpressionMetrics();
  (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
  ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();
  return (*(v44 + 8))(v40, v66);
}

uint64_t sub_100194940@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v50 = a3;
  v5 = sub_100168088(&qword_100574038);
  __chkstk_darwin(v5 - 8);
  v49 = v38 - v6;
  v7 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v7 - 8);
  v51 = v38 - v8;
  v9 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v9 - 8);
  v46 = v38 - v10;
  v11 = sub_100168088(&qword_100574048);
  __chkstk_darwin(v11 - 8);
  v42 = (v38 - v12);
  v13 = sub_100168088(&unk_100574050);
  __chkstk_darwin(v13 - 8);
  v40 = v38 - v14;
  v15 = sub_100168088(&qword_100577490);
  __chkstk_darwin(v15 - 8);
  v17 = v38 - v16;
  v48 = type metadata accessor for ModernShelf();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ModernShelf.ItemPresentation();
  v52 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v38 - v23;
  v39 = *a1;
  ShelfIDBuilder.init(named:)();
  EpisodeListSettings.listType.getter();
  EpisodeListType.description.getter();
  ShelfIDBuilder.addingAttribute(_:named:)();

  sub_100018888(&v56);
  countAndFlagsBits = ShelfIDBuilder.build()()._countAndFlagsBits;

  v38[1] = a2;
  EpisodeListSettings.listType.getter();
  EpisodeListType.shelfItemPresentation.getter();
  sub_100018888(&v57);
  EpisodeListSettings.listType.getter();
  v41 = EpisodeListType.shelfImpressionMetricsID.getter();
  sub_100018888(v58);
  v25 = type metadata accessor for ActionMenu();
  (*(*(v25 - 8) + 56))(v40, 1, 1, v25);
  v26 = type metadata accessor for Header.PrimaryAction();
  (*(*(v26 - 8) + 56))(v42, 1, 1, v26);
  v27 = type metadata accessor for ArtworkModel();
  (*(*(v27 - 8) + 56))(v46, 1, 1, v27);
  v44 = v17;
  Header.init(title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:primaryAction:artwork:)();
  v28 = *(v52 + 16);
  v46 = v19;
  v28(v21, v24, v19);
  v42 = sub_1001A4A7C(v39);
  v29 = type metadata accessor for URL();
  (*(*(v29 - 8) + 56))(v51, 1, 1, v29);
  v55 = 0;
  v53 = 0u;
  v54 = 0u;

  ModernShelf.ItemPresentation.itemKind.getter();
  ModernShelf.ItemKind.targetType.getter();
  EpisodeListSettings.listType.getter();
  if (v62 != 6)
  {
    if (v62 != 10 || v59[0] != 1 || (v30 = vorrq_s8(v60, v61), *&vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)) | v59[3] | v59[2] | v59[1]))
    {
      sub_100018888(v59);
    }
  }

  v31 = v49;
  static ImpressionMetrics.shelf(id:idType:uniqueID:impressionType:name:)();

  v32 = type metadata accessor for ImpressionMetrics();
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  v33 = v47;
  ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();
  sub_100168088(&qword_100574190);
  v34 = v45;
  v35 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100400790;
  (*(v34 + 32))(v36 + v35, v33, v48);
  result = (*(v52 + 8))(v24, v46);
  *v50 = v36;
  return result;
}

uint64_t sub_100195110@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v40 = a2;
  v47 = a3;
  v4 = sub_100168088(&qword_100574038);
  __chkstk_darwin(v4 - 8);
  v46 = v37 - v5;
  v6 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v6 - 8);
  v44 = v37 - v7;
  v8 = type metadata accessor for ModernShelf.ItemPresentation();
  __chkstk_darwin(v8 - 8);
  v42 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v10 - 8);
  v12 = v37 - v11;
  v13 = sub_100168088(&qword_100574048);
  __chkstk_darwin(v13 - 8);
  v15 = v37 - v14;
  v16 = sub_100168088(&unk_100574050);
  __chkstk_darwin(v16 - 8);
  v18 = v37 - v17;
  v19 = sub_100168088(&qword_100577490);
  __chkstk_darwin(v19 - 8);
  v37[1] = v37 - v20;
  v45 = type metadata accessor for ModernShelf();
  v43 = *(v45 - 8);
  v39 = v43;
  __chkstk_darwin(v45);
  v41 = v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *a1;
  ShelfIDBuilder.init(named:)();
  ShowListType.description.getter();
  ShelfIDBuilder.addingAttribute(_:named:)();

  ShelfIDBuilder.build()();

  EpisodeListSettings.listType.getter();
  v22 = EpisodeListType.shelfImpressionMetricsID.getter();
  v24 = v23;
  sub_100018888(v51);
  if (v24)
  {
    v25 = v22;
  }

  else
  {
    v25 = 0x7365646F73697045;
  }

  v40 = v25;
  v26 = type metadata accessor for ActionMenu();
  (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
  v27 = type metadata accessor for Header.PrimaryAction();
  (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
  v28 = type metadata accessor for ArtworkModel();
  (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
  Header.init(title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:primaryAction:artwork:)();
  LOBYTE(v48) = 1;
  ModernShelf.ItemPresentation.init(itemKind:orientation:background:horizontalRows:)();
  sub_1001A4AB0(v38);
  v29 = type metadata accessor for URL();
  (*(*(v29 - 8) + 56))(v44, 1, 1, v29);
  v50 = 0;
  v48 = 0u;
  v49 = 0u;

  static MetricsTargetType.swoosh.getter();
  v30 = v46;
  static ImpressionMetrics.shelf(id:idType:uniqueID:impressionType:name:)();

  v31 = type metadata accessor for ImpressionMetrics();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  v32 = v41;
  ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();
  sub_100168088(&qword_100574190);
  v33 = v39;
  v34 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100400790;
  result = (*(v33 + 32))(v35 + v34, v32, v45);
  *v47 = v35;
  return result;
}

id sub_1001957B4@<X0>(id result@<X0>, _BYTE *a2@<X8>)
{
  if (result)
  {
    result = [result isSerialShowTypeInFeed];
  }

  *a2 = result;
  return result;
}

uint64_t sub_1001957E8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t *a5@<X8>)
{
  if (*a1 == 1)
  {
    result = sub_10019CAE8(a2, a3, a4);
  }

  else
  {
    result = sub_10019346C(a2, a3, a4);
  }

  *a5 = result;
  return result;
}

void sub_100195840(void *a1)
{
  if (a1)
  {
    type metadata accessor for StationDetail();
    v2 = a1;
    if (StationDetail.__allocating_init(from:excludeArtwork:excludeEpisodes:excludeShows:)())
    {
      Promise.resolve(_:)();

      return;
    }

    v6 = objc_allocWithZone(NSError);
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 initWithDomain:v7 code:42 userInfo:0];

    v9 = v8;
    Promise.reject(_:)();
  }

  else
  {
    v3 = objc_allocWithZone(NSError);
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 initWithDomain:v4 code:42 userInfo:0];

    v9 = v5;
    Promise.reject(_:)();
  }
}

uint64_t sub_1001959D8()
{
  type metadata accessor for StationDetailObserver();
  swift_allocObject();

  sub_1001D31CC();
  sub_10000F084(&qword_100574088, type metadata accessor for StationDetailObserver);
  Observer.eraseToAnyObserver()();

  Promise.resolve(_:)();
}

uint64_t sub_100195B00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100168088(&qword_100574080);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v12 - v6;
  [a1 containerOrder];
  StationSortOrder.init(rawValue:)();
  v8 = type metadata accessor for StationSortOrder();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100009104(v7, &qword_100574080);
  }

  else
  {
    StationSortOrder.supportsUsingFRP(isGrouped:)([a1 isUngroupedList] != 1);
    (*(v9 + 8))(v7, v8);
  }

  type metadata accessor for StationDetail();
  v10 = a1;
  result = StationDetail.__allocating_init(from:excludeArtwork:excludeEpisodes:excludeShows:)();
  *a2 = result;
  return result;
}

uint64_t sub_100195C70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  if (v2)
  {
    *a2 = v2;
  }

  else
  {
    v4 = type metadata accessor for ModelError();
    sub_10000F084(&qword_100574078, &type metadata accessor for ModelError);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, enum case for ModelError.notInDatabase(_:), v4);
    return swift_willThrow();
  }
}

uint64_t sub_100195D3C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StationSortOrder();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = StationDetail.uuid.getter();
  v7 = v6;
  v8 = StationDetail.objectID.getter();
  v9 = StationDetail.grouped.getter();
  StationDetail.sortOrder.getter();
  v10 = StationDetail.predicateForEpisodes.getter();
  if (!v10)
  {
    v10 = [objc_opt_self() falsePredicate];
  }

  v11 = v10;
  v12 = dispatch thunk of StationDetail.episodes.getter();

  if (!v12)
  {
    v12 = _swiftEmptyArrayStorage;
  }

  *a1 = v16;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9 & 1;
  v13 = type metadata accessor for LibraryDataProvider._Station(0);
  result = (*(v3 + 32))(a1 + v13[7], v5, v2);
  *(a1 + v13[8]) = v11;
  *(a1 + v13[9]) = v12;
  return result;
}

uint64_t sub_100195EC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_100195F50(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100195FAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!v5)
        {
          return 0;
        }

        v6 = *(v3 - 1) == *(v4 - 1) && *v3 == v5;
        if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v5)
      {
        return 0;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_100196054@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for StationShow();
  v4 = a1;

  result = StationShow.__allocating_init(from:stationUuid:)();
  if (!result)
  {
    goto LABEL_5;
  }

  if (dispatch thunk of StationShow.episodeCount.getter() < 1)
  {

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v6 = dispatch thunk of StationShow.modernLockup.getter();

LABEL_6:
  *a2 = v6;
  return result;
}

uint64_t sub_1001960F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100168088(&qword_100573A78);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_100168088(&unk_100573A80);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  type metadata accessor for StationEpisode();
  v10 = a1;

  result = StationEpisode.__allocating_init(from:stationUuid:)();
  if (result)
  {
    v12 = type metadata accessor for EpisodeListSettings();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
    v13 = type metadata accessor for SectionContext();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);

    static MetricsDataConfiguration.default.getter();
    v14 = dispatch thunk of Episode.defaultLockup(for:sectionContext:configuration:)();
    v21 = v15;
    sub_100009104(&v21, &unk_100574650);
    v20 = v16;
    sub_100009104(&v20, &unk_100573A90);
    v19 = v17;
    sub_100009104(&v19, &unk_100574660);
    sub_1000112B4(v18);

    sub_100009104(v6, &qword_100573A78);
    result = sub_100009104(v9, &unk_100573A80);
  }

  else
  {
    v14 = 0;
  }

  *a2 = v14;
  return result;
}

uint64_t sub_100196368@<X0>(uint64_t *a1@<X0>, int a2@<W2>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X8>)
{
  v40 = a3;
  v38 = a2;
  v42 = a4;
  v5 = sub_100168088(&qword_100574038);
  __chkstk_darwin(v5 - 8);
  v41 = v34 - v6;
  v7 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v7 - 8);
  v39 = v34 - v8;
  v9 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v9 - 8);
  v11 = v34 - v10;
  v12 = sub_100168088(&qword_100574048);
  __chkstk_darwin(v12 - 8);
  v14 = v34 - v13;
  v15 = sub_100168088(&unk_100574050);
  __chkstk_darwin(v15 - 8);
  v17 = v34 - v16;
  v18 = sub_100168088(&qword_100577490);
  __chkstk_darwin(v18 - 8);
  v34[1] = v34 - v19;
  v36 = type metadata accessor for ModernShelf.ItemPresentation();
  v20 = *(v36 - 8);
  __chkstk_darwin(v36);
  v22 = v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v34 - v24;
  v35 = *a1;
  ShelfIDBuilder.init(named:)();
  ShelfIDBuilder.addingAttribute(_:named:)();

  countAndFlagsBits = ShelfIDBuilder.build()()._countAndFlagsBits;

  LOBYTE(v43) = 1;
  ModernShelf.ItemPresentation.init(itemKind:orientation:background:horizontalRows:)();
  v26 = type metadata accessor for ActionMenu();
  (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
  v27 = type metadata accessor for Header.PrimaryAction();
  (*(*(v27 - 8) + 56))(v14, 1, 1, v27);
  v28 = type metadata accessor for ArtworkModel();
  (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
  Header.init(title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:primaryAction:artwork:)();
  v29 = v36;
  (*(v20 + 16))(v22, v25, v36);
  v40(v35);
  v30 = type metadata accessor for URL();
  (*(*(v30 - 8) + 56))(v39, 1, 1, v30);
  v45 = 0;
  v43 = 0u;
  v44 = 0u;

  ModernShelf.ItemPresentation.itemKind.getter();
  ModernShelf.ItemKind.targetType.getter();
  v31 = v41;
  static ImpressionMetrics.shelf(id:idType:uniqueID:impressionType:name:)();

  v32 = type metadata accessor for ImpressionMetrics();
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();
  return (*(v20 + 8))(v25, v29);
}

uint64_t sub_100196930@<X0>(uint64_t a1@<X8>)
{

  return sub_100195D3C(a1);
}

uint64_t sub_10019696C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  type metadata accessor for LibraryDataProvider._Station(0);
  v8 = *(a1 + 24);
  if (StationSortOrder.supportsUsingFRP(isGrouped:)(*(a1 + 24)))
  {
    if (v8)
    {
      result = sub_10019CFA8(a1, a2, a3);
    }

    else
    {
      result = sub_10019D4B4(a1, a2, a3);
    }
  }

  else
  {
    result = sub_10019D8D8(a1);
  }

  *a4 = result;
  return result;
}

uint64_t sub_1001969F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100168088(&qword_100573FF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  v11 = *a1;
  sub_100168088(&qword_100573D48);
  v7 = type metadata accessor for ModernShelf();
  sub_100009FAC(&qword_100573FF8, &qword_100573D48);
  v11 = PaginatedPublisher.paginatedFRPOutputMap<A, B>(_:)();
  sub_100168088(&qword_100574000);
  sub_100168088(&qword_100574008);
  *(swift_allocObject() + 16) = xmmword_100400790;
  (*(*(v7 - 8) + 56))(v6, 1, 2, v7);
  FRPOutput.init(content:hasMore:totalCount:)();
  sub_100168088(&qword_100573D58);
  sub_100009FAC(&qword_100573D68, &qword_100573D58);
  v8 = PaginatedPublisher.paginatedPrepend(_:)();

  *a2 = v8;
  return result;
}

uint64_t sub_100196C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ModernShelf();
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 2, v4);
}

uint64_t sub_100196DA0(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    if (a3)
    {
      sub_100009F1C(0, &qword_1005751F0);
      v5 = a1;
      v6 = a3;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        goto LABEL_4;
      }
    }

LABEL_8:
    v12 = 0;
    return v12 & 1;
  }

  if (a3)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = EpisodeSortType.rawValue.getter();
  v10 = v9;
  if (v8 == EpisodeSortType.rawValue.getter() && v10 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_100196EB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t, char *, uint64_t), uint64_t a7)
{
  v42 = a7;
  v43 = a5;
  v40 = a6;
  v46 = a4;
  v9 = type metadata accessor for EpisodeListSettings();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = sub_100168088(&unk_100573C10);
  v44 = *(v12 - 8);
  v45 = v12;
  __chkstk_darwin(v12);
  v41 = v32 - v13;
  v49[0] = 0;
  v49[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v47 = 0xD000000000000015;
  v48 = 0x8000000100465C50;
  EpisodeListSettings.listType.getter();
  v14 = EpisodeListType.description.getter();
  v16 = v15;
  sub_100018888(v49);
  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v38 = v48;
  v39 = v47;
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v18;
  if (a1)
  {
    v34 = a1;
  }

  else
  {
    v34 = [objc_opt_self() falsePredicate];
  }

  v19 = a1;
  v32[1] = EpisodeSortType.descriptors.getter();
  sub_100009F1C(0, &qword_1005729D0);
  static OS_dispatch_queue.main.getter();
  v35 = *(v10 + 16);
  v35(v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v9);
  v33 = a3;
  v20 = v9;
  v21 = *(v10 + 80);
  v22 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v24 = v42;
  *(v23 + 16) = v40;
  *(v23 + 24) = v24;
  v40 = *(v10 + 32);
  v40(v23 + ((v21 + 32) & ~v21), v22, v20);
  type metadata accessor for LibraryEpisodeLockup();
  v32[0] = v11;
  sub_100009F1C(0, &qword_100573660);

  v25 = v43;
  v26 = v41;
  FetchedResultsListPublisher.init(identifier:entityName:predicate:sortDescriptors:pageSize:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();
  sub_100009FAC(&qword_100573C20, &unk_100573C10);
  v27 = v45;
  v28 = PaginatedPublisher.eraseToAnyPaginatedPublisher()();
  (*(v44 + 8))(v26, v27);
  v47 = v28;
  v35(v22, v33, v20);
  v29 = swift_allocObject();
  v40(v29 + ((v21 + 16) & ~v21), v22, v20);
  sub_100168088(&qword_100574100);
  sub_100168088(&qword_100573A70);
  sub_100168088(&qword_100574108);
  sub_100009FAC(&qword_100574110, &qword_100574100);
  v30 = PaginatedPublisher.paginatedFRPOutputMap<A, B>(_:)();

  return v30;
}

uint64_t sub_1001973D4@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = sub_100168088(&qword_100573A78);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_100168088(&unk_100573A80);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  type metadata accessor for StationEpisode();
  v12 = a1;

  result = StationEpisode.__allocating_init(from:stationUuid:)();
  if (result)
  {
    v14 = type metadata accessor for EpisodeListSettings();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v11, a2, v14);
    (*(v15 + 56))(v11, 0, 1, v14);

    EpisodeListSettings.sectionContext.getter();
    static MetricsDataConfiguration.default.getter();
    v16 = dispatch thunk of Episode.defaultLockup(for:sectionContext:configuration:)();
    v23 = v17;
    sub_100009104(&v23, &unk_100574650);
    v22 = v18;
    sub_100009104(&v22, &unk_100573A90);
    v21 = v19;
    sub_100009104(&v21, &unk_100574660);
    sub_1000112B4(v20);

    sub_100009104(v8, &qword_100573A78);
    result = sub_100009104(v11, &unk_100573A80);
  }

  else
  {
    v16 = 0;
  }

  *a3 = v16;
  return result;
}

uint64_t sub_100197664()
{
  v0 = LegacyLockup.shelfUniqueId.getter();
  v2 = v1;
  if (v0 == LegacyLockup.shelfUniqueId.getter() && v2 == v3)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_100197700@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v3 = sub_100168088(&qword_100574038);
  __chkstk_darwin(v3 - 8);
  v49 = v39 - v4;
  v5 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v5 - 8);
  v51 = v39 - v6;
  v7 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v7 - 8);
  v46 = v39 - v8;
  v9 = sub_100168088(&qword_100574048);
  __chkstk_darwin(v9 - 8);
  v43 = v39 - v10;
  v11 = sub_100168088(&unk_100574050);
  __chkstk_darwin(v11 - 8);
  v41 = (v39 - v12);
  v13 = sub_100168088(&qword_100577490);
  __chkstk_darwin(v13 - 8);
  v15 = v39 - v14;
  v48 = type metadata accessor for ModernShelf();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ModernShelf.ItemPresentation();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v39 - v22;
  v40 = *a1;
  ShelfIDBuilder.init(named:)();
  EpisodeListSettings.listType.getter();
  EpisodeListType.description.getter();
  ShelfIDBuilder.addingAttribute(_:named:)();

  sub_100018888(&v55);
  v24 = ShelfIDBuilder.build()();
  countAndFlagsBits = v24._countAndFlagsBits;
  v39[1] = v24._object;

  EpisodeListSettings.listType.getter();
  EpisodeListType.shelfItemPresentation.getter();
  sub_100018888(&v56);
  v25 = type metadata accessor for ActionMenu();
  (*(*(v25 - 8) + 56))(v41, 1, 1, v25);
  v26 = type metadata accessor for Header.PrimaryAction();
  (*(*(v26 - 8) + 56))(v43, 1, 1, v26);
  v27 = type metadata accessor for ArtworkModel();
  (*(*(v27 - 8) + 56))(v46, 1, 1, v27);
  v44 = v15;
  Header.init(title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:primaryAction:artwork:)();
  v28 = v18;
  v29 = *(v18 + 16);
  v43 = v20;
  v46 = v17;
  v29(v20, v23, v17);
  v41 = sub_1001A4A7C(v40);
  v30 = type metadata accessor for URL();
  (*(*(v30 - 8) + 56))(v51, 1, 1, v30);
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  EpisodeListSettings.listType.getter();
  EpisodeListType.shelfImpressionMetricsID.getter();
  sub_100018888(v57);

  ModernShelf.ItemPresentation.itemKind.getter();
  ModernShelf.ItemKind.targetType.getter();
  EpisodeListSettings.listType.getter();
  if (v61 != 6)
  {
    if (v61 != 10 || v58[0] != 1 || (v31 = vorrq_s8(v59, v60), *&vorr_s8(*v31.i8, *&vextq_s8(v31, v31, 8uLL)) | v58[3] | v58[2] | v58[1]))
    {
      sub_100018888(v58);
    }
  }

  v32 = v49;
  static ImpressionMetrics.shelf(id:idType:uniqueID:impressionType:name:)();

  v33 = type metadata accessor for ImpressionMetrics();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  v34 = v47;
  ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();
  sub_100168088(&qword_100574190);
  v35 = v45;
  v36 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100400790;
  (*(v35 + 32))(v37 + v36, v34, v48);
  result = (*(v28 + 8))(v23, v46);
  *v50 = v37;
  return result;
}

uint64_t sub_100197EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ScalarDictionary();
  v197 = *(v6 - 8);
  v198 = v6;
  __chkstk_darwin(v6);
  v8 = (&v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v194 = &v181 - v10;
  v196 = type metadata accessor for MetricsPageFields();
  v193 = *(v196 - 8);
  __chkstk_darwin(v196);
  v191 = &v181 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PageID();
  __chkstk_darwin(v12 - 8);
  v205 = &v181 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for GroupedSearchResultsPage();
  v192 = *(v195 - 8);
  __chkstk_darwin(v195);
  v190 = &v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for InteractionContext.Page();
  __chkstk_darwin(v209);
  v210 = &v181 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PageMetrics();
  __chkstk_darwin(v16 - 8);
  v216 = &v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v18 - 8);
  v208 = &v181 - v19;
  v20 = sub_100168088(&unk_100573FB0);
  __chkstk_darwin(v20 - 8);
  v207 = &v181 - v21;
  v22 = type metadata accessor for GroupedSearchResultsPage.Result();
  v211 = *(v22 - 8);
  v212 = v22;
  __chkstk_darwin(v22);
  v186 = &v181 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v185 = &v181 - v25;
  __chkstk_darwin(v26);
  v184 = &v181 - v27;
  __chkstk_darwin(v28);
  v183 = &v181 - v29;
  __chkstk_darwin(v30);
  v182 = &v181 - v31;
  v32 = type metadata accessor for ShowLockupStyle();
  __chkstk_darwin(v32 - 8);
  v34 = &v181 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UUID();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v181 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = [objc_allocWithZone(MTTextQuery) init];
  [v39 setFetchLimit:100];
  v217 = a2;
  v218 = a1;
  v40 = String._bridgeToObjectiveC()();
  [v39 runQueryWithText:v40];

  UUID.init()();
  UUID.uuidString.getter();
  (*(v36 + 8))(v38, v35);
  v41 = String.lowercased()();

  v235 = v41;
  *&v230 = 45;
  *(&v230 + 1) = 0xE100000000000000;
  v228 = 0;
  v229 = 0xE000000000000000;
  sub_10019FA64();
  v42 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v214 = v43;
  v215 = v42;

  v213 = v39;
  v44 = [v39 podcastResults];
  if (!v44)
  {
    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  v45 = v44;
  v188 = v8;
  sub_100009F1C(0, &qword_100573AC0);
  v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&v230 = _swiftEmptyArrayStorage;
  v189 = a3;
  v47 = v46 & 0xFFFFFFFFFFFFFF8;
  if (v46 >> 62)
  {
LABEL_131:
    v48 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v48 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = 0;
  v204 = 0;
  v206 = _swiftEmptyArrayStorage;
  while (v48 != v49)
  {
    if ((v46 & 0xC000000000000001) != 0)
    {
      v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v49 >= *(v47 + 16))
      {
        goto LABEL_124;
      }

      v50 = *(v46 + 8 * v49 + 32);
    }

    v51 = v50;
    v52 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
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
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    v8 = type metadata accessor for LibraryShowLockup();
    v235 = 0;
    v236 = 0u;
    v237 = 0u;
    v238 = 0u;
    v239 = -1;
    ShowLockupStyle.init(includesOfferButton:defaultSubtitle:unfollowedSubtitle:groupedEpisodesListType:)();
    static MetricsDataConfiguration.default.getter();
    ++v49;
    if (sub_100032D90(v51, v34, &v223))
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v230 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v230 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = *((v230 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v206 = v230;
      v49 = v52;
    }
  }

  *&v230 = sub_10019B2C8(v53);
  v54 = v204;
  sub_10019F9A8(&v230);
  if (v54)
  {
    goto LABEL_145;
  }

  v206 = v230;
  v55 = [v213 episodeResults];
  if (!v55)
  {
    goto LABEL_142;
  }

  v56 = v55;
  sub_100009F1C(0, &qword_100573660);
  v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v228 = _swiftEmptyArrayStorage;
  v204 = 0;
  if (v46 >> 62)
  {
    v34 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v34 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v57 = _swiftEmptyArrayStorage;
  if (v34)
  {
    v47 = 0;
    do
    {
      v203 = v57;
      v48 = v47;
      while (1)
      {
        if ((v46 & 0xC000000000000001) != 0)
        {
          v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v48 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_126;
          }

          v58 = *(v46 + 8 * v48 + 32);
        }

        v59 = v58;
        v47 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_125;
        }

        v8 = type metadata accessor for Episode();
        v232 = 0;
        v230 = 0u;
        v231 = 0u;
        v60 = v59;
        if (Episode.__allocating_init(from:clickAction:wantsListenNowReason:)())
        {
          break;
        }

        ++v48;
        if (v47 == v34)
        {
          goto LABEL_33;
        }
      }

      v48 = dispatch thunk of Episode.presentDetailsLockup.getter();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v228 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v228 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v57 = v228;
    }

    while (v47 != v34);
  }

LABEL_33:

  *&v230 = sub_10019B2C8(v61);
  v54 = v204;
  sub_10019F9A8(&v230);
  if (v54)
  {
    goto LABEL_145;
  }

  v204 = v230;
  v62 = [v213 channelResults];
  if (!v62)
  {
    goto LABEL_143;
  }

  v63 = v62;
  sub_100009F1C(0, &qword_100573B10);
  v46 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&v230 = _swiftEmptyArrayStorage;
  if (v46 >> 62)
  {
    v34 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v34 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v48 = _swiftEmptyArrayStorage;
  if (v34)
  {
    v203 = 0;
    v64 = 0;
    v47 = v46 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if ((v46 & 0xC000000000000001) != 0)
      {
        v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v64 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_128;
        }

        v65 = *(v46 + 8 * v64 + 32);
      }

      v66 = v65;
      v67 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        goto LABEL_127;
      }

      type metadata accessor for LegacyChannelLockup();
      static MetricsDataConfiguration.default.getter();
      sub_100357920(v66, 1, &v224);
      v8 = v68;
      v234 = v224;
      sub_100009104(&v234, &unk_100574650);
      v222[0] = v225;
      sub_100009104(v222, &unk_100573A90);
      v221 = v226;
      sub_100009104(&v221, &unk_100574660);
      sub_1000112B4(v227);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v230 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v230 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v64;
    }

    while (v67 != v34);
    v54 = v203;
    v48 = _swiftEmptyArrayStorage;
  }

  *&v230 = sub_10019B2C8(v69);
  sub_10019F9A8(&v230);
  if (v54)
  {
    goto LABEL_145;
  }

  v203 = v230;
  v70 = v213;
  v71 = [v213 categoryResults];

  if (!v71)
  {
LABEL_144:
    __break(1u);
  }

  type metadata accessor for MTCategory();
  v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&v230 = _swiftEmptyArrayStorage;
  if (v34 >> 62)
  {
    v72 = _CocoaArrayWrapper.endIndex.getter();
    v187 = 0;
    if (!v72)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v72 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v187 = 0;
    if (!v72)
    {
      goto LABEL_62;
    }
  }

  v73 = 0;
  v47 = v34 & 0xC000000000000001;
  v46 = v34 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (v47)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v73 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_130;
      }

      v74 = *(v34 + 8 * v73 + 32);
    }

    v8 = (v73 + 1);
    if (__OFADD__(v73, 1))
    {
      goto LABEL_129;
    }

    type metadata accessor for LegacyCategoryLockup();
    static MetricsDataConfiguration.default.getter();
    LegacyCategoryLockup.__allocating_init(from:configuration:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v230 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v230 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    ++v73;
  }

  while (v8 != v72);
  v48 = v230;
LABEL_62:

  type metadata accessor for Shelf();
  v34 = objc_opt_self();
  v8 = &selRef_isPartiallyPlayedBackCatalogItem;
  v75 = [v34 mainBundle];
  v76._countAndFlagsBits = 0xD000000000000014;
  v240._object = 0xE000000000000000;
  v76._object = 0x80000001004660E0;
  v77._countAndFlagsBits = 0;
  v77._object = 0xE000000000000000;
  v240._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v76, 0, v75, v77, v240);

  sub_1001A4CE8(v206);
  v202 = Shelf.__allocating_init(contentType:seeAllContentType:title:allItems:maxItems:isHorizontal:preferredNumberOfRows:horizontalLayoutFollowsVerticalLayoutRules:)();
  v78 = [v34 mainBundle];
  v241._object = 0xE000000000000000;
  v79._object = 0x8000000100466100;
  v79._countAndFlagsBits = 0xD000000000000017;
  v80._countAndFlagsBits = 0;
  v80._object = 0xE000000000000000;
  v241._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v79, 0, v78, v80, v241);

  sub_1001A4CE8(v204);
  v201 = Shelf.__allocating_init(contentType:seeAllContentType:title:allItems:maxItems:isHorizontal:preferredNumberOfRows:horizontalLayoutFollowsVerticalLayoutRules:)();
  v81 = [v34 mainBundle];
  v242._object = 0xE000000000000000;
  v82._object = 0x8000000100466120;
  v82._countAndFlagsBits = 0xD000000000000017;
  v83._countAndFlagsBits = 0;
  v83._object = 0xE000000000000000;
  v242._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v82, 0, v81, v83, v242);

  sub_1001A4CE8(v203);
  v200 = Shelf.__allocating_init(contentType:seeAllContentType:title:allItems:maxItems:isHorizontal:preferredNumberOfRows:horizontalLayoutFollowsVerticalLayoutRules:)();
  v84 = [v34 mainBundle];
  v85._countAndFlagsBits = 0xD000000000000011;
  v243._object = 0xE000000000000000;
  v85._object = 0x8000000100466140;
  v86._countAndFlagsBits = 0;
  v86._object = 0xE000000000000000;
  v243._countAndFlagsBits = 0;
  v87 = NSLocalizedString(_:tableName:bundle:value:comment:)(v85, 0, v84, v86, v243);
  countAndFlagsBits = v87._countAndFlagsBits;
  object = v87._object;

  sub_1001A4F08(v48);
  v54 = v48 >> 62;
  if (v48 >> 62 && _CocoaArrayWrapper.endIndex.getter() < 0)
  {
    __break(1u);
  }

  else
  {
    while (1)
    {
      v199 = Shelf.__allocating_init(contentType:seeAllContentType:title:allItems:maxItems:isHorizontal:preferredNumberOfRows:horizontalLayoutFollowsVerticalLayoutRules:)();
      sub_100168088(&unk_100573FC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004007E0;
      *(inited + 32) = v203;
      if (v54)
      {
        type metadata accessor for LegacyLockup();

        v91 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for LegacyLockup();
        v91 = v48;
      }

      v92 = v204;
      *(inited + 40) = v91;
      *(inited + 48) = v92;
      sub_10019A634(inited, 50, v206);

      swift_setDeallocating();
      sub_100168088(&unk_100574640);
      swift_arrayDestroy();

      *&v230 = sub_10019B2C8(v93);
      v54 = v187;
      sub_10019F9A8(&v230);
      if (!v54)
      {
        break;
      }

LABEL_145:

      __break(1u);
    }

    object = v230;
    v94 = [v34 v8[225]];
    v244._object = 0xE000000000000000;
    v95._countAndFlagsBits = 0xD00000000000001ALL;
    v95._object = 0x8000000100466160;
    v96._countAndFlagsBits = 0;
    v96._object = 0xE000000000000000;
    v244._countAndFlagsBits = 0;
    v97 = NSLocalizedString(_:tableName:bundle:value:comment:)(v95, 0, v94, v96, v244);
    countAndFlagsBits = v97._countAndFlagsBits;
    v54 = v97._object;

    sub_1001A4CE8(object);
    if ((object & 0x8000000000000000) == 0 && (object & 0x4000000000000000) == 0)
    {

      goto LABEL_70;
    }
  }

  v180 = _CocoaArrayWrapper.endIndex.getter();

  if (v180 < 0)
  {
    __break(1u);
LABEL_140:
    v8 = sub_100243240(v110 > 1, countAndFlagsBits, 1, v8);
LABEL_75:
    v8[2] = countAndFlagsBits;
    (*(v211 + 32))(v8 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v54, object, v212);
    v100 = &unk_100400000;
    goto LABEL_77;
  }

LABEL_70:
  v98 = Shelf.__allocating_init(contentType:seeAllContentType:title:allItems:maxItems:isHorizontal:preferredNumberOfRows:horizontalLayoutFollowsVerticalLayoutRules:)();
  v99 = *(Shelf.items.getter() + 16);

  v100 = &unk_100400000;
  v206 = v98;
  if (v99)
  {
    v101 = static SearchResultsGroupID.topResults.getter();
    v203 = v102;
    v204 = v101;
    v103 = Shelf.title.getter();
    if (v104)
    {
      v105 = v103;
    }

    else
    {
      v105 = 0;
    }

    v187 = v105;
    sub_100168088(&unk_100574680);
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_1004007B0;
    *(v106 + 32) = v98;
    v107 = v98;
    Shelf.title.getter();
    v108 = sub_100168088(&unk_100573FE0);
    (*(*(v108 - 8) + 56))(v207, 1, 1, v108);
    v109 = type metadata accessor for ArtworkModel();
    (*(*(v109 - 8) + 56))(v208, 1, 1, v109);
    sub_10019A068(v215, v218, v217, v216);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for Page();
    swift_allocObject();
    LOBYTE(v230) = 1;
    Page.init(shelves:title:selectedFilterActionId:filterActions:headerBackgroundColor:headerButtonItems:presentationOptions:pageContext:nextPageIntent:isIncomplete:isExplicit:uber:showAdamId:channelAdamId:mapiInLibrary:pageMetrics:)();
    object = v182;
    GroupedSearchResultsPage.Result.init(id:name:page:)();
    v8 = sub_100243240(0, 1, 1, _swiftEmptyArrayStorage);
    v54 = v8[2];
    v110 = v8[3];
    countAndFlagsBits = v54 + 1;
    if (v54 < v110 >> 1)
    {
      goto LABEL_75;
    }

    goto LABEL_140;
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_77:
  v111 = v202;
  v112 = *(Shelf.items.getter() + 16);

  if (v112)
  {
    v113 = static SearchResultsGroupID.shows.getter();
    v203 = v114;
    v204 = v113;
    v115 = Shelf.title.getter();
    if (v116)
    {
      v117 = v115;
    }

    else
    {
      v117 = 0;
    }

    v187 = v117;
    v118 = 0xE000000000000000;
    if (v116)
    {
      v118 = v116;
    }

    v182 = v118;
    sub_100168088(&unk_100574680);
    v119 = swift_allocObject();
    *(v119 + 16) = v100[123];
    *(v119 + 32) = v111;
    v120 = v111;
    Shelf.title.getter();
    v121 = sub_100168088(&unk_100573FE0);
    (*(*(v121 - 8) + 56))(v207, 1, 1, v121);
    v122 = type metadata accessor for ArtworkModel();
    (*(*(v122 - 8) + 56))(v208, 1, 1, v122);
    sub_10019A068(v215, v218, v217, v216);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for Page();
    swift_allocObject();
    LOBYTE(v230) = 1;
    Page.init(shelves:title:selectedFilterActionId:filterActions:headerBackgroundColor:headerButtonItems:presentationOptions:pageContext:nextPageIntent:isIncomplete:isExplicit:uber:showAdamId:channelAdamId:mapiInLibrary:pageMetrics:)();
    v123 = v183;
    GroupedSearchResultsPage.Result.init(id:name:page:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100243240(0, (v8[2] + 1), 1, v8);
    }

    v125 = v8[2];
    v124 = v8[3];
    v100 = &unk_100400000;
    if (v125 >= v124 >> 1)
    {
      v8 = sub_100243240(v124 > 1, v125 + 1, 1, v8);
    }

    v8[2] = (v125 + 1);
    (*(v211 + 32))(v8 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v125, v123, v212);
  }

  v126 = v201;
  v127 = *(Shelf.items.getter() + 16);

  if (v127)
  {
    v128 = static SearchResultsGroupID.episodes.getter();
    v203 = v129;
    v204 = v128;
    v130 = Shelf.title.getter();
    if (v131)
    {
      v132 = v130;
    }

    else
    {
      v132 = 0;
    }

    v187 = v132;
    v133 = 0xE000000000000000;
    if (v131)
    {
      v133 = v131;
    }

    v183 = v133;
    sub_100168088(&unk_100574680);
    v134 = swift_allocObject();
    *(v134 + 16) = v100[123];
    *(v134 + 32) = v126;
    v135 = v126;
    Shelf.title.getter();
    v136 = sub_100168088(&unk_100573FE0);
    (*(*(v136 - 8) + 56))(v207, 1, 1, v136);
    v137 = type metadata accessor for ArtworkModel();
    (*(*(v137 - 8) + 56))(v208, 1, 1, v137);
    sub_10019A068(v215, v218, v217, v216);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for Page();
    swift_allocObject();
    LOBYTE(v230) = 1;
    Page.init(shelves:title:selectedFilterActionId:filterActions:headerBackgroundColor:headerButtonItems:presentationOptions:pageContext:nextPageIntent:isIncomplete:isExplicit:uber:showAdamId:channelAdamId:mapiInLibrary:pageMetrics:)();
    v138 = v184;
    GroupedSearchResultsPage.Result.init(id:name:page:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100243240(0, (v8[2] + 1), 1, v8);
    }

    v140 = v8[2];
    v139 = v8[3];
    v100 = &unk_100400000;
    if (v140 >= v139 >> 1)
    {
      v8 = sub_100243240(v139 > 1, v140 + 1, 1, v8);
    }

    v8[2] = (v140 + 1);
    (*(v211 + 32))(v8 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v140, v138, v212);
  }

  v141 = v200;
  v142 = *(Shelf.items.getter() + 16);

  if (v142)
  {
    v143 = static SearchResultsGroupID.channels.getter();
    v203 = v144;
    v204 = v143;
    v145 = Shelf.title.getter();
    if (v146)
    {
      v147 = v145;
    }

    else
    {
      v147 = 0;
    }

    v187 = v147;
    v148 = 0xE000000000000000;
    if (v146)
    {
      v148 = v146;
    }

    v184 = v148;
    sub_100168088(&unk_100574680);
    v149 = swift_allocObject();
    *(v149 + 16) = v100[123];
    *(v149 + 32) = v141;
    v150 = v141;
    Shelf.title.getter();
    v151 = sub_100168088(&unk_100573FE0);
    (*(*(v151 - 8) + 56))(v207, 1, 1, v151);
    v152 = type metadata accessor for ArtworkModel();
    (*(*(v152 - 8) + 56))(v208, 1, 1, v152);
    sub_10019A068(v215, v218, v217, v216);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for Page();
    swift_allocObject();
    LOBYTE(v230) = 1;
    Page.init(shelves:title:selectedFilterActionId:filterActions:headerBackgroundColor:headerButtonItems:presentationOptions:pageContext:nextPageIntent:isIncomplete:isExplicit:uber:showAdamId:channelAdamId:mapiInLibrary:pageMetrics:)();
    v153 = v185;
    GroupedSearchResultsPage.Result.init(id:name:page:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100243240(0, (v8[2] + 1), 1, v8);
    }

    v155 = v8[2];
    v154 = v8[3];
    v100 = &unk_100400000;
    if (v155 >= v154 >> 1)
    {
      v8 = sub_100243240(v154 > 1, v155 + 1, 1, v8);
    }

    v8[2] = (v155 + 1);
    (*(v211 + 32))(v8 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v155, v153, v212);
  }

  v156 = v199;
  v157 = *(Shelf.items.getter() + 16);

  if (v157)
  {
    v158 = static SearchResultsGroupID.categories.getter();
    v203 = v159;
    v204 = v158;
    v160 = Shelf.title.getter();
    if (v161)
    {
      v162 = v160;
    }

    else
    {
      v162 = 0;
    }

    v187 = v162;
    v163 = 0xE000000000000000;
    if (v161)
    {
      v163 = v161;
    }

    v185 = v163;
    sub_100168088(&unk_100574680);
    v164 = swift_allocObject();
    *(v164 + 16) = v100[123];
    *(v164 + 32) = v156;
    v165 = v156;
    Shelf.title.getter();
    v166 = sub_100168088(&unk_100573FE0);
    (*(*(v166 - 8) + 56))(v207, 1, 1, v166);
    v167 = type metadata accessor for ArtworkModel();
    (*(*(v167 - 8) + 56))(v208, 1, 1, v167);
    sub_10019A068(v215, v218, v217, v216);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for Page();
    swift_allocObject();
    LOBYTE(v230) = 1;
    Page.init(shelves:title:selectedFilterActionId:filterActions:headerBackgroundColor:headerButtonItems:presentationOptions:pageContext:nextPageIntent:isIncomplete:isExplicit:uber:showAdamId:channelAdamId:mapiInLibrary:pageMetrics:)();
    v168 = v186;
    GroupedSearchResultsPage.Result.init(id:name:page:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100243240(0, (v8[2] + 1), 1, v8);
    }

    v170 = v8[2];
    v169 = v8[3];
    if (v170 >= v169 >> 1)
    {
      v8 = sub_100243240(v169 > 1, v170 + 1, 1, v8);
    }

    v218 = v8;
    v8[2] = (v170 + 1);
    (*(v211 + 32))(v8 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v170, v168, v212);
  }

  else
  {
    v218 = v8;
  }

  *&v230 = static MetricsPageType.searchResults.getter();
  *(&v230 + 1) = v171;
  v172._countAndFlagsBits = 95;
  v172._object = 0xE100000000000000;
  String.append(_:)(v172);
  v173._countAndFlagsBits = v215;
  v173._object = v214;
  String.append(_:)(v173);
  PageID.init(with:)();
  static MetricsPageType.searchResults.getter();
  v174 = v191;
  MetricsPageFields.init(pageID:pageType:pageDetails:sharedContent:customFields:)();
  v175 = v194;
  ScalarDictionary.init()();
  static MetricsDataConfiguration.default.getter();
  sub_100168088(&unk_100573FD0);
  type metadata accessor for PageMetrics.Instruction();
  *(swift_allocObject() + 16) = xmmword_1004007C0;
  static PageMetrics.Instruction.page(fields:configuration:)();
  static PageMetrics.Instruction.impressions(fields:configuration:)();
  MetricsPageFields.metricsFields.getter();
  v177 = v197;
  v176 = v198;
  (*(v197 + 16))(v188, v175, v198);
  PageMetrics.init(instructions:pageFields:custom:clickLocationFields:)();
  v233 = v230;
  sub_100009104(&v233, &unk_100574650);
  v220 = v231;
  sub_100009104(&v220, &unk_100573A90);
  v219 = *(&v231 + 1);
  sub_100009104(&v219, &unk_100574660);
  sub_1000112B4(v232);
  (*(v177 + 8))(v175, v176);
  (*(v193 + 8))(v174, v196);
  v178 = v190;
  GroupedSearchResultsPage.init(id:results:pageMetrics:)();
  Promise.resolve(_:)();

  return (*(v192 + 8))(v178, v195);
}

uint64_t sub_10019A068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v22 = a1;
  v25 = a4;
  v6 = type metadata accessor for ScalarDictionary();
  v23 = *(v6 - 8);
  v24 = v6;
  __chkstk_darwin(v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for MetricsPageFields();
  v26 = *(v12 - 8);
  v27 = v12;
  __chkstk_darwin(v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static MetricsPageType.searchResults.getter();
  v15 = static MetricsField<>.searchTerm.getter();
  v17 = v16;
  v31 = &type metadata for String;
  *&v29 = a2;
  *(&v29 + 1) = a3;
  sub_10016B7CC(&v29, v28);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = &_swiftEmptyDictionarySingleton;
  sub_10019ACB0(v28, v15, v17, isUniquelyReferenced_nonNull_native);

  MetricsPageFields.init(pageID:pageType:pageDetails:sharedContent:customFields:)();
  ScalarDictionary.init()();
  static MetricsDataConfiguration.default.getter();
  sub_100168088(&unk_100573FD0);
  type metadata accessor for PageMetrics.Instruction();
  *(swift_allocObject() + 16) = xmmword_1004007C0;
  static PageMetrics.Instruction.page(fields:configuration:)();
  static PageMetrics.Instruction.impressions(fields:configuration:)();
  MetricsPageFields.metricsFields.getter();
  v20 = v23;
  v19 = v24;
  (*(v23 + 16))(v8, v11, v24);
  PageMetrics.init(instructions:pageFields:custom:clickLocationFields:)();
  v28[0] = v29;
  sub_100009104(v28, &unk_100574650);
  v34 = v30;
  sub_100009104(&v34, &unk_100573A90);
  v33 = v31;
  sub_100009104(&v33, &unk_100574660);
  sub_1000112B4(v32);
  (*(v20 + 8))(v11, v19);
  return (*(v26 + 8))(v14, v27);
}

BOOL sub_10019A40C()
{
  sub_10019FA64();
  v0 = StringProtocol.localizedLowercase.getter();
  v2 = v1;
  LegacyLockup.title.getter();
  if (!v3 || (StringProtocol.localizedLowercase.getter(), , v4._countAndFlagsBits = v0, v4._object = v2, v5 = String.hasPrefix(_:)(v4), , !v5))
  {
    LegacyLockup.title.getter();
    if (v9)
    {
      StringProtocol.localizedLowercase.getter();

      v10._countAndFlagsBits = v0;
      v10._object = v2;
      v11 = String.hasPrefix(_:)(v10);

      if (v11)
      {
        return 0;
      }
    }

    else
    {
    }

    goto LABEL_10;
  }

  LegacyLockup.title.getter();
  if (!v6)
  {

    return 1;
  }

  StringProtocol.localizedLowercase.getter();

  v7._countAndFlagsBits = v0;
  v7._object = v2;
  v8 = String.hasPrefix(_:)(v7);

  if (!v8)
  {
    return 1;
  }

LABEL_10:
  type metadata accessor for LegacyEpisodeLockup();
  if (swift_dynamicCastClass())
  {
    v13 = 2;
  }

  else
  {
    type metadata accessor for LegacyChannelLockup();
    v13 = swift_dynamicCastClass() != 0;
  }

  if (swift_dynamicCastClass())
  {
    return v13 < 2;
  }

  type metadata accessor for LegacyChannelLockup();
  return swift_dynamicCastClass() && v13 == 0;
}

uint64_t sub_10019A634(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = a1[2];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 >= v5[3] >> 1)
  {
    v5 = sub_100243268(isUniquelyReferenced_nonNull_native, v6 + 1, 1, v5);
  }

  sub_100252124(0, 0, 1, a3);

  v9 = 0;
  v10 = v5[2];
  while (v10 != v9)
  {
    if (v9 >= v5[2])
    {
      __break(1u);
      goto LABEL_27;
    }

    v11 = v5[v9 + 4];
    if (v11 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      ++v9;
      if (result)
      {
LABEL_9:

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1001A7438(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        if (v13 >= v12 >> 1)
        {
          result = sub_1001A7438((v12 > 1), v13 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v13 + 1;
        _swiftEmptyArrayStorage[v13 + 4] = v11;
      }
    }

    else
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      ++v9;
      if (result)
      {
        goto LABEL_9;
      }
    }
  }

  v14 = _swiftEmptyArrayStorage[2];
  if (v14)
  {
    v15 = round(a2 / v14);
    if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_28;
    }

    if (v15 <= -9.22337204e18)
    {
LABEL_29:
      __break(1u);
    }

    else if (v15 < 9.22337204e18)
    {
      v16 = 0;
      v17 = v15;
      v18 = _swiftEmptyArrayStorage;
      while (v16 < _swiftEmptyArrayStorage[2])
      {
        v19 = v16 + 1;
        v20 = _swiftEmptyArrayStorage[v16 + 4];

        v21 = sub_10019AAA8(v18, v20, v17, a2);

        v18 = v21;
        v16 = v19;
        if (v14 == v19)
        {
          goto LABEL_25;
        }
      }

LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    __break(1u);
    return result;
  }

  v21 = _swiftEmptyArrayStorage;
LABEL_25:

  return v21;
}

uint64_t sub_10019A8AC@<X0>(BOOL *a1@<X8>)
{
  sub_100009F1C(0, &qword_100573AC0);
  result = NSManagedObjectContext.count<A>(for:)();
  *a1 = result > 0;
  return result;
}

id LibraryDataProvider.imageStore.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_100009F1C(0, &qword_100573E40);
  result = [swift_getObjCClassFromMetadata() defaultStore];
  a1[3] = v2;
  a1[4] = &protocol witness table for MTImageStore;
  *a1 = result;
  return result;
}

uint64_t sub_10019A994@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = type metadata accessor for TranscriptReportConcernURLBuilder();
  *(a1 + 32) = &off_1004E6A50;
  return BaseObjectGraph.inject<A>(_:)();
}

uint64_t sub_10019A9E8@<X0>(uint64_t *a1@<X8>)
{

  result = sub_100020360(v2);
  *a1 = result;
  return result;
}

uint64_t sub_10019AA1C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = type metadata accessor for LibraryActionController();
  *(a1 + 32) = sub_10000F084(&qword_1005738A0, type metadata accessor for LibraryActionController);
  return BaseObjectGraph.inject<A>(_:)();
}

uint64_t sub_10019AAA8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    v20 = a3;
    v21 = a4;
    result = _CocoaArrayWrapper.endIndex.getter();
    a4 = v21;
    a3 = v20;
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!a3)
  {
    goto LABEL_29;
  }

LABEL_3:
  if (result == 0x8000000000000000 && a3 == -1)
  {
    goto LABEL_44;
  }

  if (__OFSUB__(a4, result))
  {
    goto LABEL_30;
  }

  if (__OFADD__(a3, result % a3))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (a3 + result % a3 >= a4 - result)
  {
    v5 = a4 - result;
  }

  else
  {
    v5 = a3 + result % a3;
  }

  if (v5 < 0)
  {
    goto LABEL_32;
  }

  v4 = a2 >> 62;
  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v5)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    if (result >= v10)
    {
      goto LABEL_19;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_33:
  v22 = _CocoaArrayWrapper.endIndex.getter();
  result = _CocoaArrayWrapper.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v22 >= v5)
    {
      v23 = v5;
    }

    else
    {
      v23 = v22;
    }

    if (v22 < 0)
    {
      v23 = v5;
    }

    if (v5)
    {
      v10 = v23;
    }

    else
    {
      v10 = 0;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result >= v10)
    {
LABEL_19:
      if ((a2 & 0xC000000000000001) != 0 && v10)
      {
        type metadata accessor for LegacyLockup();

        v11 = 0;
        do
        {
          v12 = v11 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v11);
          v11 = v12;
        }

        while (v10 != v12);
        if (!v4)
        {
          goto LABEL_24;
        }
      }

      else
      {

        if (!v4)
        {
LABEL_24:
          v13 = 0;
          v14 = a2 & 0xFFFFFFFFFFFFFF8;
          v15 = v14 + 32;
          v16 = (2 * v10) | 1;
LABEL_27:

          sub_1001CC958(v14, v15, v13, v16);
          swift_unknownObjectRelease();
          return a1;
        }
      }

      v14 = _CocoaArrayWrapper.subscript.getter();
      v15 = v17;
      v13 = v18;
      v16 = v19;
      goto LABEL_27;
    }

    goto LABEL_43;
  }

LABEL_45:
  __break(1u);
  return result;
}

_OWORD *sub_10019ACB0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100359C2C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10019AE6C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10019B010(v16, a4 & 1);
    v11 = sub_100359C2C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_100004590(v22);

    return sub_10016B7CC(a1, v22);
  }

  else
  {
    sub_10019AE00(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_10019AE00(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10016B7CC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_10019AE6C()
{
  v1 = v0;
  sub_100168088(&unk_100572CA0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10001B944(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10016B7CC(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10019B010(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100168088(&unk_100572CA0);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_10016B7CC(v24, v34);
      }

      else
      {
        sub_10001B944(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10016B7CC(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_10019B2C8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100245200(v3, 0);
  sub_1001CA6FC(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

char *sub_10019B35C(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_100009F1C(0, &qword_100573F80), (static NSObject.== infix(_:_:)() & 1) == 0) || *(a1 + 24) != *(a2 + 24) || (v5 = type metadata accessor for LibraryDataProvider._Station(0), type metadata accessor for StationSortOrder(), sub_10000F084(&qword_100573F88, &type metadata accessor for StationSortOrder), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v37 != v36) || (static NSObject.== infix(_:_:)() & 1) == 0)
  {
    v18 = 0;
    return (v18 & 1);
  }

  v6 = *(a1 + *(v5 + 36));
  if (v6 >> 62)
  {
    v29 = *(a1 + *(v5 + 36));
    v30 = _CocoaArrayWrapper.endIndex.getter();
    v6 = v29;
    v7 = v30;
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v8 = v6;
    v33 = v5;
    result = sub_1001A7364(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
      goto LABEL_39;
    }

    v10 = 0;
    v34 = v8 & 0xC000000000000001;
    v11 = v7;
    do
    {
      if (v34)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v12 = Episode.uuid.getter();
      v14 = v13;

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_1001A7364((v15 > 1), v16 + 1, 1);
      }

      ++v10;
      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
    }

    while (v11 != v10);
    v5 = v33;
  }

  v19 = *(a2 + *(v5 + 36));
  if (v19 >> 62)
  {
    v31 = *(a2 + *(v5 + 36));
    v32 = _CocoaArrayWrapper.endIndex.getter();
    v19 = v31;
    v20 = v32;
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v20)
  {
LABEL_35:
    v18 = sub_100195EC0(_swiftEmptyArrayStorage, _swiftEmptyArrayStorage);

    return (v18 & 1);
  }

  v21 = v19;
  result = sub_1001A7364(0, v20 & ~(v20 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    v35 = v21 & 0xC000000000000001;
    do
    {
      if (v35)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v23 = Episode.uuid.getter();
      v25 = v24;

      v27 = _swiftEmptyArrayStorage[2];
      v26 = _swiftEmptyArrayStorage[3];
      if (v27 >= v26 >> 1)
      {
        sub_1001A7364((v26 > 1), v27 + 1, 1);
      }

      ++v22;
      _swiftEmptyArrayStorage[2] = v27 + 1;
      v28 = &_swiftEmptyArrayStorage[2 * v27];
      v28[4] = v23;
      v28[5] = v25;
    }

    while (v20 != v22);
    goto LABEL_35;
  }

LABEL_39:
  __break(1u);
  return result;
}

id _s8Podcasts19LibraryDataProviderC35handleEventsForBackgroundURLSession10identifier7handlerSbSS_yyctF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100009F1C(0, &qword_1005742D0);
  v6 = [swift_getObjCClassFromMetadata() sharedInstance];
  v7 = [v6 downloadManager];

  v8 = String._bridgeToObjectiveC()();
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10000F038;
  v12[3] = &unk_1004E1ED8;
  v9 = _Block_copy(v12);

  v10 = [v7 handleEventsForBackgroundURLSession:v8 handler:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();

  return v10;
}

uint64_t _s8Podcasts19LibraryDataProviderC12fetchEpisode4with9JetEngine7PromiseCySo9MTEpisodeCSgG0A10Foundation6AdamIDV_tF_0(uint64_t a1)
{
  v2 = sub_100168088(&qword_100574760);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  sub_100168088(&unk_100573A50);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.libraryLoadingSignpost.getter();
  v5 = Promise.init(signpost:log:metadata:logResult:)();
  result = type metadata accessor for CoreDataFetcher();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);

    static CoreDataFetcher.fetchEpisode(contentId:guid:title:pubDate:podcastUuid:completion:)();

    sub_100009104(v4, &qword_100574760);
    return v5;
  }

  return result;
}

uint64_t sub_10019BA30()
{
  v1 = *(type metadata accessor for StationListOptions() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10018C78C(v2);
}

unint64_t sub_10019BAC4()
{
  result = qword_100573B08;
  if (!qword_100573B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100573B08);
  }

  return result;
}

uint64_t _s8Podcasts19LibraryDataProviderC31seeAllEpisodesSettingsPublisher4uuid06filterI07Combine03AnyI0Vy0A10Foundation011EpisodeListH0Vs5NeverOGSS_AIyAJ0O10UserFilterOANGtF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a1;
  v4 = sub_100168088(&qword_100574250);
  v5 = *(v4 - 8);
  v24 = v4;
  v25 = v5;
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v27 = sub_100168088(&qword_100574258);
  v29 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v22 - v8;
  v26 = sub_100168088(&qword_100574260);
  v28 = *(v26 - 8);
  __chkstk_darwin(v26);
  v11 = &v22 - v10;
  type metadata accessor for CoreDataFetcher();
  sub_100009F1C(0, &qword_1005729D0);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = static CoreDataFetcher.performAndPublishOnPodcast<A>(with:queue:block:)();

  v30 = a3;
  v31 = v13;
  sub_100168088(&qword_100574268);
  sub_100168088(&qword_100574270);
  sub_100009FAC(&qword_100574278, &qword_100574268);
  sub_100009FAC(&qword_100574280, &qword_100574270);
  Publisher.combineLatest<A>(_:)();

  v14 = swift_allocObject();
  v15 = v22;
  *(v14 + 16) = v23;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1001A05A0;
  *(v16 + 24) = v14;
  type metadata accessor for EpisodeListSettings();
  sub_100009FAC(&qword_100574288, &qword_100574250);

  v17 = v24;
  Publisher.map<A>(_:)();

  (*(v25 + 8))(v7, v17);
  sub_100009FAC(&qword_100574290, &qword_100574258);
  sub_10000F084(&qword_100573CA8, &type metadata accessor for EpisodeListSettings);
  v18 = v27;
  Publisher<>.removeDuplicates()();
  (*(v29 + 8))(v9, v18);
  sub_100009FAC(&qword_100574298, &qword_100574260);
  v19 = v26;
  v20 = Publisher.eraseToAnyPublisher()();
  (*(v28 + 8))(v11, v19);
  return v20;
}

void sub_10019C0A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  if (a9 <= 3u)
  {
    if (a9 >= 4u)
    {
      return;
    }

    goto LABEL_12;
  }

  if (a9 <= 6u)
  {
    if (a9 != 4)
    {
      if (a9 != 5)
      {
        return;
      }
    }

    goto LABEL_12;
  }

  if (a9 == 7)
  {
LABEL_12:

    return;
  }

  if (a9 != 8)
  {
    if (a9 != 9)
    {
      return;
    }

    goto LABEL_12;
  }

  sub_10019C1BC(a3, a4);
}

uint64_t sub_10019C1BC(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_10019C2C4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t _s8Podcasts19LibraryDataProviderC26fetchImageDownloadObserver9JetEngine7PromiseCy8ShelfKit0fgH8Protocol_pGyF_0()
{
  sub_100168088(&qword_100573F98);
  sub_100009F1C(0, &qword_1005748A0);
  static OS_os_log.libraryLoadingSignpost.getter();
  v0 = Promise.init(signpost:log:metadata:logResult:)();
  v1 = type metadata accessor for ImageDownloadObserver();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v3 = [objc_opt_self() defaultCenter];
  v4 = qword_100572850;

  if (v4 != -1)
  {
    swift_once();
  }

  [v3 addObserver:v2 selector:"notificationFiredWithNote:" name:qword_100580590 object:0];

  v6[3] = v1;
  v6[4] = sub_10000F084(&unk_100573FA0, type metadata accessor for ImageDownloadObserver);
  v6[0] = v2;
  Promise.resolve(_:)();
  sub_100004590(v6);
  return v0;
}

void sub_10019C4E8()
{
  sub_100009F1C(319, &unk_100573F30);
  if (v0 <= 0x3F)
  {
    type metadata accessor for StationSortOrder();
    if (v1 <= 0x3F)
    {
      sub_100009F1C(319, &qword_1005751F0);
      if (v2 <= 0x3F)
      {
        sub_100009E94(319, &unk_100573F40, &type metadata accessor for Episode, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10019C60C(uint64_t a1, uint64_t a2, void *a3)
{
  v44 = a2;
  v5 = type metadata accessor for EpisodeListSettings();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v34 = v7;
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100168088(&qword_100574198);
  v10 = *(v9 - 8);
  v45 = v9;
  v46 = v10;
  __chkstk_darwin(v9);
  v43 = v29 - v11;
  v49[0] = 0;
  v49[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(41);

  v47 = 0xD000000000000026;
  v48 = 0x80000001004662D0;
  EpisodeListSettings.listType.getter();
  v12 = EpisodeListType.description.getter();
  v14 = v13;
  sub_100018888(v49);
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 93;
  v16._object = 0xE100000000000000;
  String.append(_:)(v16);
  v41 = v48;
  v42 = v47;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v18;
  v40 = v17;
  v38 = EpisodeListSettings.predicate.getter();
  v36 = a1;
  EpisodeListSettings.sort.getter();
  v37 = EpisodeSortType.descriptors.getter();
  sub_100009F1C(0, &qword_1005729D0);
  v32 = static OS_dispatch_queue.main.getter();
  v19 = v6;
  v35 = *(v6 + 16);
  v30 = v8;
  v31 = v5;
  v35(v8, a1, v5);
  v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v21 = swift_allocObject();
  v33 = *(v19 + 32);
  v33(v21 + v20, v8, v5);
  type metadata accessor for LibraryEpisodeLockup();
  v29[1] = a3;
  v29[2] = sub_100168088(&qword_1005741A0);
  sub_100009F1C(0, &qword_100573660);
  sub_1001A02E0(&qword_1005741A8, &qword_1005741A0);
  v22 = v43;
  FetchedResultsSectionedPublisher.init(identifier:entityName:predicate:sortDescriptors:pageSize:managedObjectContext:receiveOn:transform:updateRequiredComparator:sectionTransform:)();
  v23 = v30;
  v24 = v31;
  v35(v30, v36, v31);
  v25 = swift_allocObject();
  v33(v25 + v20, v23, v24);
  type metadata accessor for ModernShelf();
  sub_100009FAC(&qword_1005741B0, &qword_100574198);
  v26 = v45;
  v27 = PaginatedPublisher.paginatedSectionMap<A, B, C>(_:)();

  (*(v46 + 8))(v22, v26);
  return v27;
}

uint64_t sub_10019CAE8(uint64_t a1, uint64_t a2, void *a3)
{
  v39 = a2;
  v5 = type metadata accessor for EpisodeListSettings();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v29 = v7;
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100168088(&qword_100574198);
  v10 = *(v9 - 8);
  v40 = v9;
  v41 = v10;
  __chkstk_darwin(v9);
  v38 = v24 - v11;
  v44[0] = 0;
  v44[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v42 = 0xD00000000000001ALL;
  v43 = 0x8000000100466210;
  EpisodeListSettings.listType.getter();
  v12._countAndFlagsBits = EpisodeListType.description.getter();
  String.append(_:)(v12);

  sub_100018888(v44);
  v36 = v43;
  v37 = v42;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v14;
  v35 = v13;
  v33 = EpisodeListSettings.predicate.getter();
  v31 = a1;
  EpisodeListSettings.sort.getter();
  v32 = EpisodeSortType.descriptors.getter();
  sub_100009F1C(0, &qword_1005729D0);
  v27 = static OS_dispatch_queue.main.getter();
  v30 = *(v6 + 16);
  v25 = v8;
  v26 = v5;
  v30(v8, a1, v5);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  v28 = *(v6 + 32);
  v28(v16 + v15, v8, v5);
  type metadata accessor for LibraryEpisodeLockup();
  v24[1] = a3;
  v24[2] = sub_100168088(&qword_1005741A0);
  sub_100009F1C(0, &qword_100573660);
  sub_1001A02E0(&qword_1005741A8, &qword_1005741A0);
  v17 = v38;
  FetchedResultsSectionedPublisher.init(identifier:entityName:predicate:sortDescriptors:pageSize:managedObjectContext:receiveOn:transform:updateRequiredComparator:sectionTransform:)();
  v18 = v25;
  v19 = v26;
  v30(v25, v31, v26);
  v20 = swift_allocObject();
  v28(v20 + v15, v18, v19);
  type metadata accessor for ModernShelf();
  sub_100009FAC(&qword_1005741B0, &qword_100574198);
  v21 = v40;
  v22 = PaginatedPublisher.paginatedSectionMap<A, B, C>(_:)();

  (*(v41 + 8))(v17, v21);
  return v22;
}

uint64_t sub_10019CFA8(Swift::String *a1, uint64_t a2, void *a3)
{
  v30 = a3;
  v31 = a2;
  v4 = type metadata accessor for LibraryDataProvider._Station(0);
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100168088(&unk_100574010);
  v8 = *(v7 - 8);
  v32 = v7;
  v33 = v8;
  __chkstk_darwin(v7);
  v29 = v27 - v9;
  sub_100009F1C(0, &qword_1005751F0);
  sub_100168088(&unk_100574670);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100400790;
  countAndFlagsBits = a1[1]._countAndFlagsBits;
  *(v10 + 56) = sub_100009F1C(0, &unk_100573F30);
  *(v10 + 64) = sub_100024384(&qword_100574020, &unk_100573F30);
  *(v10 + 32) = countAndFlagsBits;
  v12 = countAndFlagsBits;
  v13 = NSPredicate.init(format:_:)();
  v27[4] = sub_100009F1C(0, &qword_100574028);
  StationSortOrder.playlistContainerOrder.getter();
  v27[5] = static MTPodcastPlaylistSettings.sortDescriptorsForGroupedStation(orderedBy:)();
  v34 = 0;
  v35 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v34 = 0xD000000000000026;
  v35 = 0x8000000100466180;
  String.append(_:)(*a1);
  v27[2] = v35;
  v27[3] = v34;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27[0] = v15;
  v27[1] = v14;
  sub_100009F1C(0, &qword_1005729D0);
  v16 = v13;
  static OS_dispatch_queue.main.getter();
  v17 = v6;
  sub_1001A05FC(a1, v6, type metadata accessor for LibraryDataProvider._Station);
  v18 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v19 = swift_allocObject();
  sub_1001A06C0(v17, v19 + v18, type metadata accessor for LibraryDataProvider._Station);
  type metadata accessor for LibraryShowLockup();
  v20 = v30;
  v21 = v29;
  FetchedResultsListPublisher.init(identifier:entityName:predicate:sortDescriptors:pageSize:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();
  sub_1001A05FC(a1, v17, type metadata accessor for LibraryDataProvider._Station);
  v22 = swift_allocObject();
  sub_1001A06C0(v17, v22 + v18, type metadata accessor for LibraryDataProvider._Station);
  sub_100168088(&qword_100573AA0);
  type metadata accessor for ModernShelf();
  sub_100009FAC(&qword_100574030, &unk_100574010);
  v23 = v32;
  v24 = PaginatedPublisher.paginatedFRPOutputMap<A, B>(_:)();

  (*(v33 + 8))(v21, v23);
  v34 = v24;
  sub_100168088(&qword_100573D48);
  sub_100009FAC(&qword_100573FF8, &qword_100573D48);
  v25 = PaginatedPublisher.eraseToAnyPaginatedPublisher()();

  return v25;
}

uint64_t sub_10019D4B4(Swift::String *a1, uint64_t a2, void *a3)
{
  v26 = a3;
  v27 = a2;
  v4 = type metadata accessor for LibraryDataProvider._Station(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v8 = sub_100168088(&unk_100573C10);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  __chkstk_darwin(v8);
  v25 = v24 - v10;
  v24[5] = sub_100009F1C(0, &qword_100573660);
  StationSortOrder.playlistContainerOrder.getter();
  v24[6] = static MTEpisode.sortDescriptorsForUngroupedStation(orderedBy:)();
  v30 = 0;
  v31 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v30 = 0xD00000000000001FLL;
  v31 = 0x80000001004661D0;
  String.append(_:)(*a1);
  v24[3] = v31;
  v24[4] = v30;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24[1] = v12;
  v24[2] = v11;
  v13 = *(&a1->_countAndFlagsBits + *(v5 + 40));
  sub_100009F1C(0, &qword_1005729D0);
  v14 = v13;
  static OS_dispatch_queue.main.getter();
  sub_1001A05FC(a1, v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LibraryDataProvider._Station);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_1001A06C0(v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for LibraryDataProvider._Station);
  type metadata accessor for LibraryEpisodeLockup();
  v17 = v26;
  v18 = v25;
  FetchedResultsListPublisher.init(identifier:entityName:predicate:sortDescriptors:pageSize:managedObjectContext:receiveOn:transform:updateRequiredComparator:)();
  sub_1001A05FC(a1, v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LibraryDataProvider._Station);
  v19 = swift_allocObject();
  sub_1001A06C0(v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v15, type metadata accessor for LibraryDataProvider._Station);
  sub_100168088(&qword_100573A70);
  type metadata accessor for ModernShelf();
  sub_100009FAC(&qword_100573C20, &unk_100573C10);
  v20 = v28;
  v21 = PaginatedPublisher.paginatedFRPOutputMap<A, B>(_:)();

  (*(v29 + 8))(v18, v20);
  v30 = v21;
  sub_100168088(&qword_100573D48);
  sub_100009FAC(&qword_100573FF8, &qword_100573D48);
  v22 = PaginatedPublisher.eraseToAnyPaginatedPublisher()();

  return v22;
}

uint64_t sub_10019D8D8(uint64_t a1)
{
  v2 = sub_100168088(&qword_100573A78);
  __chkstk_darwin(v2 - 8);
  v4 = v58 - v3;
  v5 = sub_100168088(&unk_100573A80);
  __chkstk_darwin(v5 - 8);
  v7 = v58 - v6;
  v8 = sub_100168088(&qword_100574060);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v74 = v58 - v10;
  v73 = sub_100168088(&qword_100574068);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v71 = v58 - v13;
  v14 = sub_100168088(&qword_100574038);
  __chkstk_darwin(v14 - 8);
  v69 = v58 - v15;
  v16 = sub_100168088(&qword_100574040);
  __chkstk_darwin(v16 - 8);
  v66 = v58 - v17;
  v18 = sub_100168088(&unk_100578C10);
  __chkstk_darwin(v18 - 8);
  v62 = v58 - v19;
  v20 = sub_100168088(&qword_100574048);
  __chkstk_darwin(v20 - 8);
  v60 = v58 - v21;
  v22 = sub_100168088(&unk_100574050);
  __chkstk_darwin(v22 - 8);
  v59 = v58 - v23;
  v24 = sub_100168088(&qword_100577490);
  __chkstk_darwin(v24 - 8);
  v63 = v58 - v25;
  v68 = type metadata accessor for ModernShelf();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v64 = v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v79 = v58 - v28;
  v65 = type metadata accessor for ModernShelf.ItemPresentation();
  v78 = *(v65 - 8);
  __chkstk_darwin(v65);
  v61 = v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = v58 - v31;
  ShelfIDBuilder.init(named:)();
  ShelfIDBuilder.addingAttribute(_:named:)();

  v33 = ShelfIDBuilder.build()();
  v58[2] = v33._countAndFlagsBits;
  v58[1] = v33._object;

  LOBYTE(v83) = 1;
  v77 = v32;
  ModernShelf.ItemPresentation.init(itemKind:orientation:background:horizontalRows:)();
  v34 = *(a1 + *(type metadata accessor for LibraryDataProvider._Station(0) + 36));
  if (v34 >> 62)
  {
    v35 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = _swiftEmptyArrayStorage;
  v76 = v8;
  v75 = v9;
  if (v35)
  {
    *&v80 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v35 < 0)
    {
      __break(1u);
      return result;
    }

    v38 = 0;
    do
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      ++v38;
      v39 = type metadata accessor for EpisodeListSettings();
      (*(*(v39 - 8) + 56))(v7, 1, 1, v39);
      v40 = type metadata accessor for SectionContext();
      (*(*(v40 - 8) + 56))(v4, 1, 1, v40);
      static MetricsDataConfiguration.default.getter();
      dispatch thunk of Episode.defaultLockup(for:sectionContext:configuration:)();
      v89 = v83;
      sub_100009104(&v89, &unk_100574650);
      v88 = v84;
      sub_100009104(&v88, &unk_100573A90);
      v87 = v85;
      sub_100009104(&v87, &unk_100574660);
      sub_1000112B4(v86);

      sub_100009104(v4, &qword_100573A78);
      sub_100009104(v7, &unk_100573A80);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v35 != v38);
    v36 = v80;
  }

  v41 = type metadata accessor for ActionMenu();
  (*(*(v41 - 8) + 56))(v59, 1, 1, v41);
  v42 = type metadata accessor for Header.PrimaryAction();
  (*(*(v42 - 8) + 56))(v60, 1, 1, v42);
  v43 = type metadata accessor for ArtworkModel();
  (*(*(v43 - 8) + 56))(v62, 1, 1, v43);
  Header.init(title:subtitle:displaySubtitleAsEyebrow:titleContextMenu:primaryAction:artwork:)();
  v44 = v65;
  (*(v78 + 16))(v61, v77, v65);
  sub_1001A4A7C(v36);
  v45 = type metadata accessor for URL();
  (*(*(v45 - 8) + 56))(v66, 1, 1, v45);
  v82 = 0;
  v80 = 0u;
  v81 = 0u;

  ModernShelf.ItemPresentation.itemKind.getter();
  ModernShelf.ItemKind.targetType.getter();
  v46 = v69;
  static ImpressionMetrics.shelf(id:idType:uniqueID:impressionType:name:)();

  v47 = type metadata accessor for ImpressionMetrics();
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  v48 = v79;
  ModernShelf.init(id:header:itemPresentation:items:url:mergeWhenFetched:hideFromCarPlay:shelvesIntent:impressionMetrics:metricsName:)();
  v49 = v67;
  v50 = v68;
  (*(v67 + 16))(v64, v48, v68);
  if (v36 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  v51 = v76;
  v52 = v75;

  v53 = v71;
  FRPOutput.init(content:hasMore:totalCount:)();
  v54 = v72;
  v55 = v73;
  (*(v72 + 16))(v70, v53, v73);
  v56 = v74;
  Just.init(_:)();
  sub_100009FAC(&qword_100574070, &qword_100574060);
  v57 = PaginatedPublisher.eraseToAnyPaginatedPublisher()();
  (*(v52 + 8))(v56, v51);
  (*(v54 + 8))(v53, v55);
  (*(v49 + 8))(v79, v50);
  (*(v78 + 8))(v77, v44);
  return v57;
}

uint64_t sub_10019E508(char *a1, char *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = a1;
  v6 = *a1;

  v23 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v23 = sub_1001D77EC(v23);
  }

  v20 = v5;
  *v5 = v23;
  v7 = v23 + 16;
  v8 = *(v23 + 2);
  if (v8 < 2)
  {
LABEL_9:

    *v20 = v23;
    return 1;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = v4;
      v11 = &v23[16 * v8];
      v12 = *v11;
      v13 = v7;
      v14 = &v7[16 * v8];
      v15 = *(v14 + 1);
      __dst = (v9 + 8 * *v11);
      v16 = (v9 + 8 * *v14);
      v5 = (v9 + 8 * v15);

      sub_10019E818(__dst, v16, v5, a2);
      v4 = v10;

      if (v10)
      {
        *v20 = v23;

        return 1;
      }

      if (v15 < v12)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v13;
      if (v8 - 2 >= *v13)
      {
        goto LABEL_13;
      }

      *v11 = v12;
      *(v11 + 1) = v15;
      v18 = v17 - v8;
      if (v17 < v8)
      {
        goto LABEL_14;
      }

      v7 = v13;
      v8 = v17 - 1;
      memmove(v14, v14 + 16, 16 * v18);
      *v13 = v8;
      if (v8 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v23;
    __break(1u);
  }

  return result;
}

Swift::Int sub_10019E6B0(uint64_t *a1)
{
  v2 = a1[1];
  swift_bridgeObjectRetain_n();
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
        type metadata accessor for LegacyLockup();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v7[1] = v5;

      sub_10019EAB8(v7, v8, a1, v4);

      *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
      swift_bridgeObjectRelease_n();
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

    sub_10019F624(0, v2, 1, a1);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_10019E818(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v19 = __src;
    if (a4 != __src || &__src[8 * v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v14 = &v4[8 * v12];
    if (v10 >= 8 && v19 > v6)
    {
      v27 = v4;
LABEL_27:
      v20 = v19 - 8;
      v5 -= 8;
      v21 = v14;
      do
      {
        v22 = v5 + 8;
        v21 -= 8;
        v23 = v20;

        v24 = sub_10019A40C();

        if (v24)
        {
          v25 = v23;
          if (v22 != v19)
          {
            *v5 = *v23;
          }

          v4 = v27;
          if (v14 <= v27 || (v19 = v25, v25 <= v6))
          {
            v19 = v25;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v22 != v14)
        {
          *v5 = *v21;
        }

        v5 -= 8;
        v14 = v21;
        v20 = v23;
      }

      while (v21 > v27);
      v14 = v21;
      v4 = v27;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v14 = &v4[8 * v9];
    if (v7 >= 8 && __src < v5)
    {
      v15 = __src;
      while (1)
      {

        v16 = sub_10019A40C();

        if (!v16)
        {
          break;
        }

        v17 = v15;
        v18 = v6 == v15;
        v15 += 8;
        if (!v18)
        {
          goto LABEL_17;
        }

LABEL_18:
        v6 += 8;
        if (v4 >= v14 || v15 >= v5)
        {
          goto LABEL_20;
        }
      }

      v17 = v4;
      v18 = v6 == v4;
      v4 += 8;
      if (v18)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v6 = *v17;
      goto LABEL_18;
    }

LABEL_20:
    v19 = v6;
  }

LABEL_38:
  if (v19 != v4 || v19 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v19, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_10019EAB8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v126 = _swiftEmptyArrayStorage;
  v4 = a3[1];
  if (v4 >= 1)
  {
    swift_bridgeObjectRetain_n();
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    while (1)
    {
      v7 = v5;
      v8 = v5 + 1;
      if (v5 + 1 < v4)
      {
        v111 = v6;
        v9 = v5;
        v10 = *a3;

        v122 = sub_10019A40C();

        v8 = v9 + 2;
        if (v9 + 2 < v4)
        {
          sub_10019FA64();
          v11 = v10 + 8 * v9 + 16;
          v120 = v4;
          while (1)
          {
            v14 = v8;

            v15 = StringProtocol.localizedLowercase.getter();
            v17 = v16;
            LegacyLockup.title.getter();
            if (v18 && (StringProtocol.localizedLowercase.getter(), , v19._countAndFlagsBits = v15, v19._object = v17, v20 = String.hasPrefix(_:)(v19), , v20))
            {
              LegacyLockup.title.getter();
              if (!v21)
              {

LABEL_28:
                v13 = v120;
                v8 = v14;
                if (!v122)
                {
                  v7 = v9;
                  v6 = v111;
                  goto LABEL_41;
                }

                goto LABEL_9;
              }

              StringProtocol.localizedLowercase.getter();

              v22._countAndFlagsBits = v15;
              v22._object = v17;
              v23 = String.hasPrefix(_:)(v22);

              if (!v23)
              {

                goto LABEL_28;
              }
            }

            else
            {
              LegacyLockup.title.getter();
              if (v24)
              {
                StringProtocol.localizedLowercase.getter();

                v25._countAndFlagsBits = v15;
                v25._object = v17;
                v26 = String.hasPrefix(_:)(v25);

                if (v26)
                {

                  goto LABEL_25;
                }
              }

              else
              {
              }
            }

            type metadata accessor for LegacyEpisodeLockup();
            if (swift_dynamicCastClass())
            {
              v27 = 2;
            }

            else
            {
              type metadata accessor for LegacyChannelLockup();
              v27 = swift_dynamicCastClass() != 0;
            }

            if (swift_dynamicCastClass())
            {

              v12 = v27 < 2;
              goto LABEL_8;
            }

            type metadata accessor for LegacyChannelLockup();
            v28 = swift_dynamicCastClass();

            if (v28)
            {
              v12 = v27 == 0;
LABEL_8:
              v8 = v14;
              v13 = v120;
              if ((v122 ^ v12))
              {
                break;
              }

              goto LABEL_9;
            }

LABEL_25:
            v8 = v14;
            v13 = v120;
            if (v122)
            {
              v7 = v9;
              v6 = v111;
              if (v14 < v9)
              {
                goto LABEL_159;
              }

              goto LABEL_34;
            }

LABEL_9:
            ++v8;
            v11 += 8;
            if (v13 == v8)
            {
              v8 = v13;
              break;
            }
          }
        }

        v7 = v9;
        v6 = v111;
        if (v122)
        {
          if (v8 < v9)
          {
            goto LABEL_159;
          }

LABEL_34:
          if (v7 < v8)
          {
            v29 = 8 * v8 - 8;
            v30 = 8 * v7;
            v31 = v8;
            v32 = v7;
            do
            {
              if (v32 != --v31)
              {
                v34 = *a3;
                if (!*a3)
                {
                  goto LABEL_164;
                }

                v33 = *(v34 + v30);
                *(v34 + v30) = *(v34 + v29);
                *(v34 + v29) = v33;
              }

              ++v32;
              v29 -= 8;
              v30 += 8;
            }

            while (v32 < v31);
          }
        }
      }

LABEL_41:
      v35 = a3[1];
      if (v8 >= v35)
      {
        goto LABEL_79;
      }

      if (__OFSUB__(v8, v7))
      {
        goto LABEL_158;
      }

      if (v8 - v7 >= a4)
      {
        goto LABEL_79;
      }

      if (__OFADD__(v7, a4))
      {
        goto LABEL_160;
      }

      v36 = v7 + a4 >= v35 ? a3[1] : v7 + a4;
      if (v36 < v7)
      {
        break;
      }

      if (v8 == v36)
      {
        goto LABEL_79;
      }

      v112 = v6;
      v37 = *a3;
      sub_10019FA64();
      v121 = v37;
      v38 = (v37 + 8 * v8 - 8);
      v39 = v7 - v8;
      while (2)
      {
        v115 = v38;
        v116 = v8;
        v114 = v39;
        while (1)
        {
          v124 = v39;

          v40 = StringProtocol.localizedLowercase.getter();
          v42 = v41;
          LegacyLockup.title.getter();
          if (!v43)
          {
            break;
          }

          StringProtocol.localizedLowercase.getter();

          v44._countAndFlagsBits = v40;
          v44._object = v42;
          v45 = String.hasPrefix(_:)(v44);

          if (!v45)
          {
            break;
          }

          LegacyLockup.title.getter();
          if (v46)
          {
            StringProtocol.localizedLowercase.getter();

            v47._countAndFlagsBits = v40;
            v47._object = v42;
            v48 = String.hasPrefix(_:)(v47);

            if (v48)
            {
              type metadata accessor for LegacyEpisodeLockup();
              if (swift_dynamicCastClass())
              {
                v49 = 2;
                goto LABEL_70;
              }

              goto LABEL_69;
            }
          }

          else
          {
          }

LABEL_75:
          if (!v121)
          {
            goto LABEL_162;
          }

          v53 = *v38;
          *v38 = v38[1];
          v38[1] = v53;
          --v38;
          v39 = v124 + 1;
          if (v124 == -1)
          {
            goto LABEL_52;
          }
        }

        LegacyLockup.title.getter();
        if (v50)
        {
          StringProtocol.localizedLowercase.getter();

          v51._countAndFlagsBits = v40;
          v51._object = v42;
          v52 = String.hasPrefix(_:)(v51);

          if (v52)
          {
            goto LABEL_51;
          }
        }

        else
        {
        }

        type metadata accessor for LegacyEpisodeLockup();
        if (swift_dynamicCastClass())
        {
          v49 = 2;
          goto LABEL_70;
        }

LABEL_69:
        type metadata accessor for LegacyChannelLockup();
        v49 = swift_dynamicCastClass() != 0;
LABEL_70:
        if (swift_dynamicCastClass())
        {

          if (v49 >= 2)
          {
            goto LABEL_52;
          }

          goto LABEL_75;
        }

        type metadata accessor for LegacyChannelLockup();
        if (swift_dynamicCastClass())
        {

          if (v49)
          {
            goto LABEL_52;
          }

          goto LABEL_75;
        }

LABEL_51:

LABEL_52:
        v8 = v116 + 1;
        v38 = v115 + 1;
        v39 = v114 - 1;
        if (v116 + 1 != v36)
        {
          continue;
        }

        break;
      }

      v8 = v36;
      v6 = v112;
LABEL_79:
      if (v8 < v7)
      {
        goto LABEL_157;
      }

      v117 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1001D7800(0, *(v6 + 2) + 1, 1, v6);
      }

      v55 = *(v6 + 2);
      v54 = *(v6 + 3);
      v56 = v55 + 1;
      if (v55 >= v54 >> 1)
      {
        v6 = sub_1001D7800((v54 > 1), v55 + 1, 1, v6);
      }

      *(v6 + 2) = v56;
      v57 = v6 + 32;
      v58 = &v6[16 * v55 + 32];
      *v58 = v7;
      *(v58 + 1) = v117;
      v125 = *a1;
      if (!*a1)
      {
        goto LABEL_165;
      }

      if (v55)
      {
        v123 = v6 + 32;
        while (1)
        {
          v59 = v56 - 1;
          if (v56 >= 4)
          {
            break;
          }

          if (v56 == 3)
          {
            v60 = *(v6 + 4);
            v61 = *(v6 + 5);
            v70 = __OFSUB__(v61, v60);
            v62 = v61 - v60;
            v63 = v70;
LABEL_100:
            if (v63)
            {
              goto LABEL_147;
            }

            v76 = &v6[16 * v56];
            v78 = *v76;
            v77 = *(v76 + 1);
            v79 = __OFSUB__(v77, v78);
            v80 = v77 - v78;
            v81 = v79;
            if (v79)
            {
              goto LABEL_149;
            }

            v82 = &v57[16 * v59];
            v84 = *v82;
            v83 = *(v82 + 1);
            v70 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v70)
            {
              goto LABEL_152;
            }

            if (__OFADD__(v80, v85))
            {
              goto LABEL_154;
            }

            if (v80 + v85 >= v62)
            {
              if (v62 < v85)
              {
                v59 = v56 - 2;
              }

              goto LABEL_122;
            }

            goto LABEL_115;
          }

          if (v56 < 2)
          {
            goto LABEL_155;
          }

          v86 = &v6[16 * v56];
          v88 = *v86;
          v87 = *(v86 + 1);
          v70 = __OFSUB__(v87, v88);
          v80 = v87 - v88;
          v81 = v70;
LABEL_115:
          if (v81)
          {
            goto LABEL_151;
          }

          v89 = &v57[16 * v59];
          v91 = *v89;
          v90 = *(v89 + 1);
          v70 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v70)
          {
            goto LABEL_153;
          }

          if (v92 < v80)
          {
            goto LABEL_3;
          }

LABEL_122:
          if (v59 - 1 >= v56)
          {
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
            goto LABEL_161;
          }

          v97 = *a3;
          if (!*a3)
          {
            goto LABEL_163;
          }

          v98 = v6;
          v99 = &v57[16 * v59 - 16];
          v100 = *v99;
          v101 = v59;
          v102 = &v57[16 * v59];
          v103 = *(v102 + 1);
          v104 = (v97 + 8 * *v99);
          v105 = (v97 + 8 * *v102);
          v106 = (v97 + 8 * v103);

          sub_10019E818(v104, v105, v106, v125);
          if (v119)
          {

            v126 = v98;
            goto LABEL_137;
          }

          if (v103 < v100)
          {
            goto LABEL_142;
          }

          v6 = v98;
          v107 = *(v98 + 2);
          if (v101 > v107)
          {
            goto LABEL_143;
          }

          *v99 = v100;
          *(v99 + 1) = v103;
          if (v101 >= v107)
          {
            goto LABEL_144;
          }

          v56 = v107 - 1;
          memmove(v102, v102 + 16, 16 * (v107 - 1 - v101));
          *(v98 + 2) = v107 - 1;
          v57 = v123;
          if (v107 <= 2)
          {
            goto LABEL_3;
          }
        }

        v64 = &v57[16 * v56];
        v65 = *(v64 - 8);
        v66 = *(v64 - 7);
        v70 = __OFSUB__(v66, v65);
        v67 = v66 - v65;
        if (v70)
        {
          goto LABEL_145;
        }

        v69 = *(v64 - 6);
        v68 = *(v64 - 5);
        v70 = __OFSUB__(v68, v69);
        v62 = v68 - v69;
        v63 = v70;
        if (v70)
        {
          goto LABEL_146;
        }

        v71 = &v6[16 * v56];
        v73 = *v71;
        v72 = *(v71 + 1);
        v70 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v70)
        {
          goto LABEL_148;
        }

        v70 = __OFADD__(v62, v74);
        v75 = v62 + v74;
        if (v70)
        {
          goto LABEL_150;
        }

        if (v75 >= v67)
        {
          v93 = &v57[16 * v59];
          v95 = *v93;
          v94 = *(v93 + 1);
          v70 = __OFSUB__(v94, v95);
          v96 = v94 - v95;
          if (v70)
          {
            goto LABEL_156;
          }

          if (v62 < v96)
          {
            v59 = v56 - 2;
          }

          goto LABEL_122;
        }

        goto LABEL_100;
      }

LABEL_3:
      v5 = v117;
      v4 = a3[1];
      if (v117 >= v4)
      {
        v126 = v6;
        goto LABEL_134;
      }
    }

LABEL_161:
    __break(1u);
LABEL_162:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_163:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_164:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_165:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_166:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
    return result;
  }

  swift_bridgeObjectRetain_n();
LABEL_134:
  v108 = *a1;
  if (!*a1)
  {
    goto LABEL_166;
  }

  sub_10019E508(&v126, v108, a3);
  if (v119)
  {

LABEL_137:
    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_10019F624(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v27 = *a4;
    v5 = (*a4 + 8 * a3 - 8);
    v6 = result - a3;
    sub_10019FA64();
LABEL_6:
    v25 = v5;
    v26 = v4;
    v24 = v6;
    while (1)
    {
      v28 = v6;

      v7 = StringProtocol.localizedLowercase.getter();
      v9 = v8;
      LegacyLockup.title.getter();
      if (v10 && (StringProtocol.localizedLowercase.getter(), , v11._countAndFlagsBits = v7, v11._object = v9, v12 = String.hasPrefix(_:)(v11), , v12))
      {
        LegacyLockup.title.getter();
        if (!v13)
        {

LABEL_22:
          v20 = v28;
          goto LABEL_29;
        }

        StringProtocol.localizedLowercase.getter();

        v14._countAndFlagsBits = v7;
        v14._object = v9;
        v15 = String.hasPrefix(_:)(v14);

        if (!v15)
        {

          goto LABEL_22;
        }

        type metadata accessor for LegacyEpisodeLockup();
        if (swift_dynamicCastClass())
        {
          v16 = 2;
          goto LABEL_24;
        }
      }

      else
      {
        LegacyLockup.title.getter();
        if (v17)
        {
          StringProtocol.localizedLowercase.getter();

          v18._countAndFlagsBits = v7;
          v18._object = v9;
          v19 = String.hasPrefix(_:)(v18);

          if (v19)
          {
            goto LABEL_4;
          }
        }

        else
        {
        }

        type metadata accessor for LegacyEpisodeLockup();
        if (swift_dynamicCastClass())
        {
          v16 = 2;
          goto LABEL_24;
        }
      }

      type metadata accessor for LegacyChannelLockup();
      v16 = swift_dynamicCastClass() != 0;
LABEL_24:
      if (swift_dynamicCastClass())
      {

        v20 = v28;
        if (v16 >= 2)
        {
          goto LABEL_5;
        }
      }

      else
      {
        type metadata accessor for LegacyChannelLockup();
        if (!swift_dynamicCastClass())
        {
LABEL_4:

LABEL_5:
          v4 = v26 + 1;
          v5 = v25 + 1;
          v6 = v24 - 1;
          if (v26 + 1 == a2)
          {
            return result;
          }

          goto LABEL_6;
        }

        v20 = v28;
        if (v16)
        {
          goto LABEL_5;
        }
      }

LABEL_29:
      if (!v27)
      {
        __break(1u);
        return result;
      }

      v21 = *v5;
      *v5 = v5[1];
      v5[1] = v21;
      --v5;
      v22 = __CFADD__(v20, 1);
      v6 = v20 + 1;
      if (v22)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_10019F9A8(uint64_t *a1)
{
  v2 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1001D7904(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;

  sub_10019E6B0(v6);

  specialized ContiguousArray._endMutation()();
  return swift_bridgeObjectRelease_n();
}

unint64_t sub_10019FA64()
{
  result = qword_10057D840;
  if (!qword_10057D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057D840);
  }

  return result;
}

uint64_t sub_10019FAE8()
{
  v1 = (type metadata accessor for LibraryDataProvider._Station(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  v6 = type metadata accessor for StationSortOrder();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10019FD34(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for EpisodeListSettings() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  return sub_100196EB8(a1, a2, v2 + v6, v9, v10, v12, v13);
}

uint64_t sub_10019FDFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10019FE38@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for EpisodeListSettings() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001957E8(a1, v2 + v6, v8, v9, a2);
}

uint64_t sub_10019FEF4@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for EpisodeListSettings() - 8);
  v6 = v2 + ((*(v5 + 80) + 25) & ~*(v5 + 80));

  return sub_100195110(a1, v6, a2);
}

unint64_t sub_10019FFC0()
{
  result = qword_1005741C0;
  if (!qword_1005741C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005741C0);
  }

  return result;
}

unint64_t sub_1001A0058()
{
  result = qword_1005741E8;
  if (!qword_1005741E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005741E8);
  }

  return result;
}

uint64_t sub_1001A00AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for EpisodeListSettings() - 8);
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1001973D4(a1, v6, a2);
}

uint64_t sub_1001A0148(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for EpisodeListSettings() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1001A0220(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for EpisodeListSettings() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1001A02E0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100168310(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001A0348()
{
  v1 = type metadata accessor for Calendar();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for EpisodeListSettings();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_1001A04A8(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for Calendar() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for EpisodeListSettings() - 8);
  v8 = v2 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return a2(a1, v2 + v5, v8);
}

uint64_t sub_1001A05DC(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_1001A05FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001A0664(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001A06C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001A0728()
{
  result = qword_1005742B8;
  if (!qword_1005742B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005742B8);
  }

  return result;
}

id sub_1001A07B0()
{
  v1 = [*(v0 + 16) importContext];

  return v1;
}

id sub_1001A07E8()
{
  v1 = [*(v0 + 16) privateQueueContext];

  return v1;
}

void sub_1001A08A4()
{
  v1 = sub_100168088(&unk_10057BB90);
  __chkstk_darwin(v1 - 8);
  v3 = &v12[-v2];
  v4 = type metadata accessor for PresentationSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1001A0B84(v13);
  if (v14 != 3)
  {
    if (v14 < 3 || (v13[0] & 1) == 0)
    {
      v8 = &qword_100574578;
      v9 = v13;
LABEL_8:
      sub_100009104(v9, v8);
      return;
    }

    sub_1000044A0(v0 + 4, v0[7]);
    dispatch thunk of LibraryActionControllerProtocol.unsubscribe(podcast:)();

    swift_beginAccess();
    if (!v0[3])
    {
      sub_100009104(v13, &qword_100574578);
      (*(v5 + 56))(v3, 1, 1, v4);
      goto LABEL_11;
    }

    dispatch thunk of ContextActionsConfiguration.presentationSource.getter();

    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_100009104(v13, &qword_100574578);
LABEL_11:
      v8 = &unk_10057BB90;
      v9 = v3;
      goto LABEL_8;
    }

    (*(v5 + 32))(v7, v3, v4);
    sub_1000044A0(v0 + 10, v0[13]);
    v10 = dispatch thunk of LibraryRemovalControllerProtocol.removalOptionsAfterUnfollow(uuid:)();
    if (v10)
    {
      v11 = v10;
      PresentationSource.present(_:wantsAutomaticModalPresentationStyle:permittedArrowDirections:animated:completion:)();
    }

    sub_100009104(v13, &qword_100574578);
    (*(v5 + 8))(v7, v4);
  }
}

void sub_1001A0B84(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ShowOffer();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PodcastContextActionDataType(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  v16 = *(v1 + 16);
  if (v16)
  {
    v17 = OBJC_IVAR____TtC8Podcasts24PodcastContextActionData_type;
    swift_beginAccess();
    sub_1001A1560(v16 + v17, v12);
    sub_1001A15C4(v12, v15);
    sub_1001A1560(v15, v9);
    type metadata accessor for PodcastContextActionDataType.Kind(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v4 + 32))(v6, v9, v3);
      ShowOffer.adamId.getter();
      (*(v4 + 8))(v6, v3);
      v26 = 0;
      v27 = 0;
      v29 = 0;
      v30 = 0;
      v28 = 2;
      dispatch thunk of PodcastStateController.stateMachine(for:initialState:)();
    }

    else
    {
      v26 = 0;
      v27 = 0;
      v29 = 0;
      v30 = 0;
      v28 = 2;
      dispatch thunk of PodcastStateController.stateMachine(for:initialState:)();
    }

    dispatch thunk of PodcastStateMachine.currentState.getter();
    v21 = v24;
    v22 = v23;
    v18 = v25;

    sub_1001A1628(v15);
    v19 = v21;
    v20 = v22;
  }

  else
  {
    v18 = 0;
    v19 = xmmword_100401980;
    v20 = 0uLL;
  }

  *a1 = v20;
  *(a1 + 16) = v19;
  *(a1 + 32) = v18;
}

uint64_t sub_1001A0E18()
{

  sub_100004590(v0 + 32);

  sub_100004590(v0 + 80);
  v1 = OBJC_IVAR____TtC8Podcasts31UnsubscribePodcastContextAction_metricsLabel;
  v2 = type metadata accessor for MetricsLabel();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UnsubscribePodcastContextAction()
{
  result = qword_100574458;
  if (!qword_100574458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001A0F30()
{
  result = type metadata accessor for MetricsLabel();
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

uint64_t sub_1001A1000()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._object = 0x80000001004664A0;
  v1._countAndFlagsBits = 0xD000000000000015;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_1001A10C0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Podcasts31UnsubscribePodcastContextAction_metricsLabel;
  v4 = type metadata accessor for MetricsLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1001A1138@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for ContextActionType.unsubscribe(_:);
  v3 = type metadata accessor for ContextActionType();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t sub_1001A1214(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10023276C(a1, a2, WitnessTable);
}

uint64_t sub_1001A12AC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t sub_1001A1348(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232848(a1, a2, WitnessTable);
}

id sub_1001A13A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100232ADC(a1, a2, WitnessTable);
}

uint64_t sub_1001A1408()
{
  if (*(v0 + 16))
  {
    sub_1001A0B84(v3);
    if (v4 != 3)
    {
      if (v4 >= 3)
      {
        v1 = v3[0];
        sub_100009104(v3, &qword_100574578);
        if (v1)
        {
          return 1;
        }
      }

      else
      {
        sub_100009104(v3, &qword_100574578);
      }
    }
  }

  return 0;
}

uint64_t sub_1001A1494(uint64_t a1)
{
  result = sub_1001A151C(&unk_100582260);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001A14D8(uint64_t a1)
{
  result = sub_1001A151C(&qword_100574570);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001A151C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UnsubscribePodcastContextAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001A1560(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PodcastContextActionDataType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A15C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PodcastContextActionDataType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A1628(uint64_t a1)
{
  v2 = type metadata accessor for PodcastContextActionDataType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001A1684@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  type metadata accessor for RootFlowController();
  swift_allocObject();
  v4 = a1;

  v5 = RootFlowController.init(rootViewController:asPartOf:)();

  result = static RootFlowController.shared.setter();
  *a2 = v5;
  a2[1] = &protocol witness table for BaseFlowController;
  return result;
}

uint64_t sub_1001A171C@<X0>(uint64_t *a1@<X8>)
{
  v2 = objc_allocWithZone(type metadata accessor for LibraryTabGroupManager());

  result = LibraryTabGroupManager.init(asPartOf:)();
  *a1 = result;
  return result;
}

uint64_t sub_1001A1774@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = type metadata accessor for LibraryTabGroupManager();
  *(a1 + 32) = &protocol witness table for LibraryTabGroupManager;
  return BaseObjectGraph.inject<A>(_:)();
}

uint64_t sub_1001A17C8@<X0>(void *a1@<X8>)
{
  v2 = objc_allocWithZone(type metadata accessor for MenuBarController());

  v3 = sub_100023468();

  *a1 = v3;
  return result;
}

uint64_t sub_1001A1828@<X0>(void *a1@<X8>)
{
  type metadata accessor for MenuBarController();
  BaseObjectGraph.inject<A>(_:)();
  result = sub_1001A22CC(&qword_1005745E8, type metadata accessor for MenuBarController);
  *a1 = v3;
  a1[1] = result;
  return result;
}

void sub_1001A18AC(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = [objc_opt_self() _currentTraitCollection];
  if (v4)
  {
    v5 = v4;
    UITraitCollection.interfaceMode.getter();

    type metadata accessor for ParentFlowController();
    swift_allocObject();

    v6 = ParentFlowController.init(asPartOf:interfaceMode:)();
    v7 = (a1 + OBJC_IVAR____TtC8Podcasts28PodcastsFlowTabBarController_flowController);
    swift_beginAccess();
    *v7 = v6;
    v7[1] = &protocol witness table for BaseFlowController;

    swift_unknownObjectRelease();
    ParentFlowController.initializePageContextForMetrics()();
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }
}

id sub_1001A19A4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for TabMenu.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static NavigationTab.== infix(_:_:)())
  {
    type metadata accessor for FlowNavigationController();

    return FlowNavigationController.__allocating_init(asPartOf:)();
  }

  else
  {
    v9 = static TabMenu.viewController(for:interfaceMode:using:asPartOf:)();
    if (v9)
    {
      v10 = v9;
      if ((NavigationTab.isStation.getter() & 1) == 0 && (static NavigationTab.== infix(_:_:)() & 1) == 0)
      {
        v11 = static TabMenu.allItems(group:)();
        v12 = *(v11 + 16);
        if (v12)
        {
          v31 = a1;
          v32 = a2;
          v33 = v10;
          v37 = &_swiftEmptyArrayStorage;
          sub_1001A75D0(0, v12, 0);
          v13 = v37;
          v14 = v5 + 16;
          v15 = *(v5 + 16);
          v16 = *(v5 + 80);
          v30[1] = v11;
          v17 = v11 + ((v16 + 32) & ~v16);
          v34 = *(v14 + 56);
          v35 = v15;
          v36 = v14;
          v18 = (v14 - 8);
          do
          {
            v35(v7, v17, v4);
            v19 = TabMenu.Item.navigationTab.getter();
            (*v18)(v7, v4);
            v37 = v13;
            v21 = v13[2];
            v20 = v13[3];
            if (v21 >= v20 >> 1)
            {
              sub_1001A75D0((v20 > 1), v21 + 1, 1);
              v13 = v37;
            }

            v13[2] = v21 + 1;
            v13[v21 + 4] = v19;
            v17 += v34;
            --v12;
          }

          while (v12);

          v10 = v33;
          a1 = v31;
        }

        else
        {

          v13 = &_swiftEmptyArrayStorage;
        }

        v37 = a1;
        __chkstk_darwin(v23);
        v30[-2] = &v37;
        v24 = sub_1003ADF8C(sub_1001A2294, &v30[-4], v13);

        if ((v24 & 1) == 0)
        {
          type metadata accessor for FlowNavigationController();

          v25 = FlowNavigationController.__allocating_init(asPartOf:)();
          sub_100168088(&unk_100574680);
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_1004007B0;
          *(v26 + 32) = v10;
          sub_100009F1C(0, &qword_1005745E0);
          v27 = v25;
          v28 = v10;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v27 setViewControllers:isa];

          return v27;
        }
      }

      return v10;
    }

    else
    {
      v22 = objc_allocWithZone(UIViewController);

      return [v22 init];
    }
  }
}

uint64_t sub_1001A1DA0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v29 = type metadata accessor for TabMenu.Item();
  v36 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100168088(&qword_100574580);
  BaseObjectGraph.inject<A>(_:)();
  v9 = v39[0];
  v8 = v39[1];
  v31 = sub_100168088(&qword_1005745B0);
  BaseObjectGraph.inject<A>(_:)();
  v32 = type metadata accessor for ParentFlowController();
  BaseObjectGraph.inject<A>(_:)();
  v10 = v38[0];
  v11 = &a1[OBJC_IVAR____TtC8Podcasts28PodcastsFlowTabBarController_actionRunner];
  swift_beginAccess();
  *v11 = v9;
  *(v11 + 1) = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&a1[OBJC_IVAR____TtC8Podcasts28PodcastsFlowTabBarController_objectGraph] = a4;

  v12 = TabMenu.Group.items(for:)();
  v13 = *(v12 + 16);
  if (v13)
  {
    v27[2] = v10;
    v27[3] = v9;
    v28 = a1;
    v38[0] = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v34 = *(v36 + 16);
    v35 = a4;
    v14 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v27[1] = v12;
    v15 = v12 + v14;
    v33 = *(v36 + 72);
    v36 += 16;
    v16 = (v36 - 8);
    v17 = v29;
    do
    {
      v34(v7, v15, v17);
      TabMenu.Item.tab(asPartOf:viewControllerProvider:)();
      (*v16)(v7, v17);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v15 += v33;
      --v13;
    }

    while (v13);

    a1 = v28;
  }

  else
  {
  }

  sub_100009F1C(0, &qword_1005745C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setTabs:isa];

  v19 = [a1 sidebar];
  sub_100004428(v39, v38);
  sub_100168088(&qword_1005745C8);
  if (swift_dynamicCast())
  {
    v20 = v37;
  }

  else
  {
    v20 = 0;
  }

  [v19 setDelegate:v20];
  swift_unknownObjectRelease();

  sub_100004428(v39, v38);
  sub_100168088(&unk_1005745D0);
  if (swift_dynamicCast())
  {
    v21 = v37;
  }

  else
  {
    v21 = 0;
  }

  [a1 setDelegate:v21];
  swift_unknownObjectRelease();
  v22 = static TabMenu.defaultTab.getter();
  type metadata accessor for BaseObjectGraph();
  BaseObjectGraph.__allocating_init(name:_:)();
  dispatch thunk of FlowController.change(tab:execute:popToRoot:userInitiated:suppressMetrics:objectGraph:)();

  sub_10002ACE0(v22);
  v23 = [a1 sidebar];
  v24 = objc_allocWithZone(type metadata accessor for SidebarProfileButton());

  v25 = SidebarProfileButton.init(asPartOf:)();
  [v23 setBottomBarView:v25];
  swift_unknownObjectRelease();

  return sub_100004590(v39);
}

uint64_t sub_1001A22CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MTPodcast.carPlayContentItemChildSortDescriptors.getter()
{
  v1 = [objc_opt_self() sortDescriptorsForPubDateAscending:{objc_msgSend(v0, "sortAscending")}];
  sub_100029528();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void __swiftcall MTPodcast.carPlayContentItemChildPredicate(forContext:)(NSPredicate_optional *__return_ptr retstr, NSManagedObjectContext forContext)
{
  v4 = [v2 uuid];
  if (v4)
  {
    v5 = v4;
    v6 = objc_opt_self();
    v7 = [v6 predicateForAllEpisodesOnPodcastUuid:v5];

    v8 = [v6 predicateForEpisodeTypeFilter:5];
    v9 = [v7 AND:v8];

    v16 = v9;
    v10 = swift_allocObject();
    v10[2].super.isa = v2;
    v10[3].super.isa = forContext.super.isa;
    v10[4].super.isa = &v16;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1001A27A0;
    *(v11 + 24) = v10;
    aBlock[4] = sub_10002D7F8;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002D904;
    aBlock[3] = &unk_1004E2178;
    v12 = _Block_copy(aBlock);
    v13 = v2;
    v14 = forContext.super.isa;

    [(objc_class *)v14 performBlockAndWait:v12];
    _Block_release(v12);
    LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

    if (v14)
    {
      __break(1u);
    }

    else
    {
    }
  }
}

void sub_1001A25B8(void *a1, void *a2, void **a3)
{
  v6 = [a1 nextEpisodeUuid];
  if (v6)
  {
    v7 = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = String._bridgeToObjectiveC()();
    v23 = [a2 episodeForUuid:v8];
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v23 = 0;
  }

  [a1 hidesPlayedEpisodes];
  if (MTPodcastHidesPlayedEpisodesResolved())
  {
    v9 = *a3;
    v10 = objc_opt_self();
    v11 = v9;
    v12 = [v10 predicateForVisuallyPlayed:0];
    v13 = [v11 AND:v12];

    v14 = *a3;
    *a3 = v13;
  }

  else
  {
    v15 = MTPodcast.seasonToShow(episodeToPlay:)();
    if (v16)
    {
      v14 = v23;
    }

    else
    {
      v17 = v15;
      v18 = *a3;
      v19 = objc_opt_self();
      v20 = v18;
      v21 = [v19 predicateForSeasonNumber:v17];
      v22 = [v20 AND:v21];

      v14 = *a3;
      *a3 = v22;
    }
  }
}

char *sub_1001A27AC()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *&result[OBJC_IVAR____TtC8Podcasts19ChannelListObserver_channelObserver];

    v15 = 0;
    LODWORD(v5) = [v6 performFetch:&v15];

    v7 = v15;
    if (v5)
    {

      return v7;
    }

    else
    {
      v14[1] = v15;
      v8 = v15;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static Logger.database.getter();
      swift_errorRetain();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        swift_errorRetain();
        v13 = _swift_stdlib_bridgeErrorToNSError();
        *(v11 + 4) = v13;
        *v12 = v13;
        _os_log_impl(&_mh_execute_header, v9, v10, "unable to fetch channels %@", v11, 0xCu);
        sub_100009104(v12, &qword_100575B20);
      }

      else
      {
      }

      return (*(v1 + 8))(v3, v0);
    }
  }

  return result;
}

id sub_1001A2A68()
{
  [*&v0[OBJC_IVAR____TtC8Podcasts19ChannelListObserver_channelObserver] setDelegate:0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChannelListObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1001A2B8C(void *a1, void *a2)
{
  result = [a1 fetchedObjects];
  if (result)
  {
    v4 = result;
    sub_100009F1C(0, &qword_100573B10);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_4:
        result = specialized ContiguousArray.reserveCapacity(_:)();
        if (v6 < 0)
        {
          __break(1u);
          return result;
        }

        type metadata accessor for LegacyChannelLockup();
        v7 = 0;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v8 = *(v5 + 8 * v7 + 32);
          }

          v9 = v8;
          ++v7;
          static MetricsDataConfiguration.default.getter();
          sub_100357920(v9, 1, &v10);
          v16 = v10;
          sub_100009104(&v16, &unk_100574650);
          v15 = v11;
          sub_100009104(&v15, &unk_100573A90);
          v14 = v12;
          sub_100009104(&v14, &unk_100574660);
          sub_1000112B4(v13);

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v6 != v7);

        goto LABEL_13;
      }
    }

LABEL_13:
    *a2 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t (*sub_1001A2E20())(void *)
{
  v1 = (*v0 + OBJC_IVAR____TtC8Podcasts19ChannelListObserver_didChange);
  swift_beginAccess();
  v2 = *v1;
  v3 = v1[1];
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_1001A324C;
  }

  else
  {
    v5 = 0;
  }

  sub_100013CB4(v2);
  return v5;
}

uint64_t sub_1001A2EC8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v6 = sub_1001A3248;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*v2 + OBJC_IVAR____TtC8Podcasts19ChannelListObserver_didChange);
  swift_beginAccess();
  v8 = *v7;
  *v7 = v6;
  v7[1] = v5;
  return sub_1000112B4(v8);
}

void (*sub_1001A2F6C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = OBJC_IVAR____TtC8Podcasts19ChannelListObserver_didChange;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = (v5 + v6);
  swift_beginAccess();
  v8 = *v7;
  if (*v7)
  {
    v9 = v7[1];
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v9;
    v11 = sub_1001A3138;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  *(v4 + 24) = v11;
  *(v4 + 32) = v10;
  return sub_1001A3044;
}

void sub_1001A3044(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (v3)
  {
    if (a2)
    {
      v4 = sub_1001A3100;
    }

    else
    {
      v4 = sub_1001A3248;
    }

    v5 = v2[4];
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (v2[5] + v2[6]);
  *v7 = v4;
  v7[1] = v6;
  swift_endAccess();

  free(v2);
}

uint64_t sub_1001A3100(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1001A3164()
{
  objc_sync_enter(v0);
  v1 = *&v0[OBJC_IVAR____TtC8Podcasts19ChannelListObserver_channelObserver];
  v2 = sub_10002F748(v1);

  *&v0[OBJC_IVAR____TtC8Podcasts19ChannelListObserver_currentValue] = v2;

  objc_sync_exit(v0);
  v3 = &v0[OBJC_IVAR____TtC8Podcasts19ChannelListObserver_didChange];
  result = swift_beginAccess();
  v5 = *v3;
  if (*v3)
  {
    sub_100013CB4(v5);

    v5(v6);
    sub_1000112B4(v5);
  }

  return result;
}

uint64_t sub_1001A3250(void *a1, int a2, uint64_t a3)
{
  v119 = a3;
  LODWORD(v123) = a2;
  v122 = a1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v120 = v4;
  v121 = v5;
  __chkstk_darwin(v4);
  v7 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v117 = &v116 - v9;
  __chkstk_darwin(v10);
  v116 = &v116 - v11;
  v12 = sub_100168088(&qword_100574760);
  __chkstk_darwin(v12 - 8);
  v14 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v116 - v16;
  __chkstk_darwin(v18);
  v20 = &v116 - v19;
  __chkstk_darwin(v21);
  v23 = &v116 - v22;
  __chkstk_darwin(v24);
  v118 = &v116 - v25;
  v26 = _s27CarPlayEpisodeSubtitleStyleOMa();
  __chkstk_darwin(v26);
  v28 = (&v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for EpisodePlayState();
  __chkstk_darwin(v29);
  v31 = (&v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001A47B0(v3, v31, &type metadata accessor for EpisodePlayState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1001A4668(v31, v17);
        sub_1001A46D8(v17, v14);
        v33 = v120;
        v34 = v121;
        if ((*(v121 + 48))(v14, 1, v120) == 1)
        {
          sub_1001A4748(v17);
          sub_1001A4748(v14);
LABEL_24:
          v43 = _swiftEmptyArrayStorage;
          v39 = v123;
          goto LABEL_53;
        }

        v60 = v117;
        (*(v34 + 32))(v117, v14, v33);
        v124 = Date.friendlyDisplayString.getter();
        v125 = v61;
        sub_1001A0728();
        v62 = Collection.isNotEmpty.getter();

        v39 = v123;
        if (v62)
        {
          (*(v34 + 16))(v7, v60, v33);
          Date.friendlyDisplayString.getter();
          countAndFlagsBits = String.init(playedOn:dateString:)();
          object = v63;
        }

        else
        {
          v81 = [objc_opt_self() mainBundle];
          v127._object = 0xE000000000000000;
          v82._object = 0x80000001004665A0;
          v82._countAndFlagsBits = 0xD000000000000014;
          v83._countAndFlagsBits = 0;
          v83._object = 0xE000000000000000;
          v127._countAndFlagsBits = 0;
          v84 = NSLocalizedString(_:tableName:bundle:value:comment:)(v82, 0, v81, v83, v127);
          countAndFlagsBits = v84._countAndFlagsBits;
          object = v84._object;
        }

        v43 = sub_100243134(0, 1, 1, _swiftEmptyArrayStorage);
        v55 = *(v43 + 2);
        v85 = *(v43 + 3);
        v56 = v55 + 1;
        if (v55 >= v85 >> 1)
        {
          v43 = sub_100243134((v85 > 1), v55 + 1, 1, v43);
        }

        (*(v34 + 8))(v60, v33);
        sub_1001A4748(v17);
        goto LABEL_52;
      }

LABEL_23:
      sub_1001A4818(v31, &type metadata accessor for EpisodePlayState);
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_16:
    v47 = v31[1];
    v48 = v47 - *v31;
    if (v48 > 0.0)
    {
      v49 = [objc_opt_self() prettyShortStringWithDuration:1 includeTimeRemainingPhrase:0 abbreviated:v48];
      if (v49)
      {
        v50 = v49;
        countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        object = v52;

        v43 = sub_100243134(0, 1, 1, _swiftEmptyArrayStorage);
        v55 = *(v43 + 2);
        v54 = *(v43 + 3);
        v56 = v55 + 1;
        v39 = v123;
        if (v55 >= v54 >> 1)
        {
          goto LABEL_78;
        }

        goto LABEL_52;
      }
    }

    v39 = v123;
    if (v47 <= 0.0 || (v57 = [objc_opt_self() prettyShortStringWithDuration:v47]) == 0)
    {
      v43 = _swiftEmptyArrayStorage;
      goto LABEL_53;
    }

    v58 = v57;
    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    object = v59;

    v43 = sub_100243134(0, 1, 1, _swiftEmptyArrayStorage);
    v55 = *(v43 + 2);
    v54 = *(v43 + 3);
LABEL_51:
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
LABEL_78:
      v43 = sub_100243134((v54 > 1), v56, 1, v43);
    }

LABEL_52:
    *(v43 + 2) = v56;
    v95 = &v43[16 * v55];
    *(v95 + 4) = countAndFlagsBits;
    *(v95 + 5) = object;
    goto LABEL_53;
  }

  if (EnumCaseMultiPayload != 4)
  {
    goto LABEL_23;
  }

  sub_1001A47B0(v119, v28, _s27CarPlayEpisodeSubtitleStyleOMa);
  v35 = swift_getEnumCaseMultiPayload();
  v36 = *v28;
  if (v35 == 1)
  {
    v37 = v28[4];
    v38 = *(v28 + 40);
    v39 = v123;
    if ((v28[3] & 1) != 0 || (v28[1] & 1) != 0 || (type metadata accessor for AlbumStringBuilder(), (*(v121 + 56))(v20, 1, 1, v120), v40 = static AlbumStringBuilder.albumString(podcastTitle:episodeNumber:seasonNumber:isSerialType:pubDate:)(), v42 = v41, sub_1001A4748(v20), !v42))
    {
      v43 = _swiftEmptyArrayStorage;
      if (v38)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v43 = sub_100243134(0, 1, 1, _swiftEmptyArrayStorage);
      v45 = *(v43 + 2);
      v44 = *(v43 + 3);
      if (v45 >= v44 >> 1)
      {
        v43 = sub_100243134((v44 > 1), v45 + 1, 1, v43);
      }

      *(v43 + 2) = v45 + 1;
      v46 = &v43[16 * v45];
      *(v46 + 4) = v40;
      *(v46 + 5) = v42;
      if (v38)
      {
        goto LABEL_53;
      }
    }
  }

  else
  {
    v64 = *(v28 + 8);
    v65 = sub_100168088(&qword_1005812A0);
    v66 = v28 + *(v65 + 64);
    v37 = *v66;
    v67 = v66[8];
    v68 = v118;
    sub_1001A4668(v28 + *(v65 + 48), v118);
    if ((v64 & 1) != 0 || v36 < 1)
    {
      sub_1001A46D8(v68, v23);
      v80 = v120;
      v79 = v121;
      if ((*(v121 + 48))(v23, 1, v120) == 1)
      {
        sub_1001A4748(v68);
        sub_1001A4748(v23);
        v43 = _swiftEmptyArrayStorage;
        v39 = v123;
        if (v67)
        {
          goto LABEL_53;
        }
      }

      else
      {
        (*(v79 + 32))(v116, v23, v80);
        v86 = Date.friendlyDisplayString.getter();
        v88 = v87;
        v43 = sub_100243134(0, 1, 1, _swiftEmptyArrayStorage);
        v90 = *(v43 + 2);
        v89 = *(v43 + 3);
        if (v90 >= v89 >> 1)
        {
          v43 = sub_100243134((v89 > 1), v90 + 1, 1, v43);
        }

        v39 = v123;
        (*(v121 + 8))(v116, v80);
        sub_1001A4748(v68);
        *(v43 + 2) = v90 + 1;
        v91 = &v43[16 * v90];
        *(v91 + 4) = v86;
        *(v91 + 5) = v88;
        if (v67)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      v69 = [objc_opt_self() mainBundle];
      v126._object = 0xE000000000000000;
      v70._countAndFlagsBits = 0xD000000000000015;
      v70._object = 0x80000001004665C0;
      v71._countAndFlagsBits = 0;
      v71._object = 0xE000000000000000;
      v126._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v70, 0, v69, v71, v126);

      sub_100168088(&unk_100574670);
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_100400790;
      *(v72 + 56) = &type metadata for Int64;
      *(v72 + 64) = &protocol witness table for Int64;
      *(v72 + 32) = v36;
      v73 = static String.localizedStringWithFormat(_:_:)();
      v75 = v74;

      v43 = sub_100243134(0, 1, 1, _swiftEmptyArrayStorage);
      v77 = *(v43 + 2);
      v76 = *(v43 + 3);
      if (v77 >= v76 >> 1)
      {
        v43 = sub_100243134((v76 > 1), v77 + 1, 1, v43);
      }

      v39 = v123;
      sub_1001A4748(v68);
      *(v43 + 2) = v77 + 1;
      v78 = &v43[16 * v77];
      *(v78 + 4) = v73;
      *(v78 + 5) = v75;
      if (v67)
      {
        goto LABEL_53;
      }
    }
  }

  if (v37 > 0.0)
  {
    v92 = [objc_opt_self() prettyShortStringWithDuration:v37];
    if (v92)
    {
      v93 = v92;
      countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      object = v94;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_100243134(0, *(v43 + 2) + 1, 1, v43);
      }

      v55 = *(v43 + 2);
      v54 = *(v43 + 3);
      goto LABEL_51;
    }
  }

LABEL_53:
  if (v39)
  {
    sub_1000044A0(v122, v122[3]);
    v96 = dispatch thunk of StoreDataProvider.explicitSymbol.getter();
    v98 = v97;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_77:
      v43 = sub_100243134(0, *(v43 + 2) + 1, 1, v43);
    }

    v100 = *(v43 + 2);
    v99 = *(v43 + 3);
    v101 = (v100 + 1);
    if (v100 >= v99 >> 1)
    {
      v43 = sub_100243134((v99 > 1), v100 + 1, 1, v43);
    }

    *(v43 + 2) = v101;
    v102 = &v43[16 * v100];
    *(v102 + 4) = v96;
    *(v102 + 5) = v98;
  }

  else
  {
    v101 = *(v43 + 2);
    if (!v101)
    {
      v98 = _swiftEmptyArrayStorage;
      goto LABEL_75;
    }
  }

  v103 = 0;
  v104 = v43 + 40;
  v105 = (v101 - 1);
  v98 = _swiftEmptyArrayStorage;
  do
  {
    v96 = &v104[16 * v103];
    v106 = v103;
    while (1)
    {
      if (v106 >= *(v43 + 2))
      {
        __break(1u);
        goto LABEL_77;
      }

      v107 = *(v96 - 1);
      v108 = *v96;
      v109 = !v107 && v108 == 0xE000000000000000;
      if (!v109 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v106 = (v106 + 1);
      v96 += 16;
      if (v101 == v106)
      {
        goto LABEL_75;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v123 = v104;
    v124 = v98;
    v122 = v105;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1001A7364(0, v98[2] + 1, 1);
      v98 = v124;
    }

    v112 = v98[2];
    v111 = v98[3];
    if (v112 >= v111 >> 1)
    {
      sub_1001A7364((v111 > 1), v112 + 1, 1);
      v98 = v124;
    }

    v103 = (v106 + 1);
    v98[2] = v112 + 1;
    v113 = &v98[2 * v112];
    v113[4] = v107;
    v113[5] = v108;
    v105 = v122;
    v104 = v123;
  }

  while (v122 != v106);
LABEL_75:

  v124 = v98;
  static String.eyebrowSeparatorSymbol.getter();
  sub_100168088(&qword_10057C9C0);
  sub_1001A4604();
  v114 = BidirectionalCollection<>.joined(separator:)();

  return v114;
}

uint64_t _s27CarPlayEpisodeSubtitleStyleOMa()
{
  result = qword_100574708;
  if (!qword_100574708)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001A3F04(void *a1, uint64_t a2, char a3)
{
  v5 = _s27CarPlayEpisodeSubtitleStyleOMa();
  __chkstk_darwin(v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v47 - v9;
  v11 = type metadata accessor for ShowOffer();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  EpisodeOffer.showOffer.getter();
  ShowOffer.showType.getter();
  (*(v12 + 8))(v14, v11);
  v15 = ShowType.rawValue.getter();
  v17 = v16;
  if (v15 == ShowType.rawValue.getter() && v17 == v18)
  {

    if (a3)
    {
LABEL_7:
      if (EpisodeOffer.contentRating.getter() == 2)
      {
        v21 = 0;
      }

      else
      {
        v30 = ContentRating.rawValue.getter();
        v32 = v31;
        v21 = 1;
        if (v30 != ContentRating.rawValue.getter() || v32 != v33)
        {
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }

      v34 = EpisodeOffer.seasonNumber.getter();
      v36 = v35;
      v37 = EpisodeOffer.episodeNumber.getter();
      v39 = v38;
      v40 = EpisodeOffer.duration.getter();
      *v10 = v34;
      v10[8] = v36 & 1;
      *(v10 + 2) = v37;
      v10[24] = v39 & 1;
      *(v10 + 4) = v40;
      v10[40] = v41 & 1;
      swift_storeEnumTagMultiPayload();
      v42 = sub_1001A3250(a1, v21 & 1, v10);
      goto LABEL_25;
    }
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20 & 1) != 0 && (a3)
    {
      goto LABEL_7;
    }
  }

  if (EpisodeOffer.contentRating.getter() == 2)
  {
    v22 = 0;
  }

  else
  {
    v23 = ContentRating.rawValue.getter();
    v25 = v24;
    v22 = 1;
    if (v23 != ContentRating.rawValue.getter() || v25 != v26)
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  v27 = sub_100168088(&qword_1005812A0);
  v28 = *(v27 + 48);
  *v7 = EpisodeOffer.episodeNumber.getter();
  v7[8] = v29 & 1;
  if (EpisodeOffer.releaseDate.getter())
  {
    LazyDate.value.getter();
  }

  else
  {
    v43 = type metadata accessor for Date();
    (*(*(v43 - 8) + 56))(&v7[v28], 1, 1, v43);
  }

  v44 = &v7[*(v27 + 64)];
  *v44 = EpisodeOffer.duration.getter();
  v44[8] = v45 & 1;
  swift_storeEnumTagMultiPayload();
  v42 = sub_1001A3250(a1, v22 & 1, v7);
  v10 = v7;
LABEL_25:
  sub_1001A4818(v10, _s27CarPlayEpisodeSubtitleStyleOMa);
  return v42;
}

uint64_t sub_1001A433C(void *a1, uint64_t a2, char a3)
{
  v5 = _s27CarPlayEpisodeSubtitleStyleOMa();
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = LegacyEpisodeLockup.showTypeIsSerial.getter();
  v9 = LegacyLockup.isExplicit.getter();
  if (v8 & 1) != 0 && (a3)
  {
    v10 = LegacyEpisodeLockup.seasonNumber.getter();
    v12 = v11;
    v13 = LegacyEpisodeLockup.episodeNumber.getter();
    v15 = v14;
    v16 = LegacyEpisodeLockup.duration.getter();
    *v7 = v10;
    v7[8] = v12 & 1;
    *(v7 + 2) = v13;
    v7[24] = v15 & 1;
    *(v7 + 4) = v16;
    v7[40] = v17 & 1;
  }

  else
  {
    v18 = &v7[*(sub_100168088(&qword_1005812A0) + 64)];
    *v7 = LegacyEpisodeLockup.episodeNumber.getter();
    v7[8] = v19 & 1;
    LegacyEpisodeLockup.releaseDate.getter();
    *v18 = LegacyEpisodeLockup.duration.getter();
    v18[8] = v20 & 1;
  }

  swift_storeEnumTagMultiPayload();
  v21 = sub_1001A3250(a1, v9 & 1, v7);
  sub_1001A4818(v7, _s27CarPlayEpisodeSubtitleStyleOMa);
  return v21;
}

uint64_t sub_1001A44D0()
{
  v1 = type metadata accessor for EpisodePlayState();
  __chkstk_darwin(v1);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001A47B0(v0, v3, &type metadata accessor for EpisodePlayState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1001A4748(v3);
        *&result = 1.0;
        return result;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 4)
  {
    if (EnumCaseMultiPayload != 3)
    {
LABEL_9:
      sub_1001A4818(v3, &type metadata accessor for EpisodePlayState);
LABEL_10:
      *&result = 0.0;
      return result;
    }

LABEL_7:
    v6 = v3[1];
    v7 = *v3;
    if (v7 < v6)
    {
      *&result = (v7 / v6);
      return result;
    }

    goto LABEL_10;
  }

  *&result = 0.0;
  return result;
}

unint64_t sub_1001A4604()
{
  result = qword_10057A300;
  if (!qword_10057A300)
  {
    sub_100168310(&qword_10057C9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10057A300);
  }

  return result;
}

uint64_t sub_1001A4668(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100574760);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A46D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100168088(&qword_100574760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A4748(uint64_t a1)
{
  v2 = sub_100168088(&qword_100574760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001A47B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001A4818(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1001A48C8()
{
  sub_1001A493C();
  if (v0 <= 0x3F)
  {
    sub_1001A49EC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1001A493C()
{
  if (!qword_100574718)
  {
    sub_100168310(&qword_1005741A0);
    sub_100168310(&qword_100574760);
    sub_100168310(&unk_10057E2F0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100574718);
    }
  }
}

void sub_1001A49EC()
{
  if (!qword_100574720)
  {
    sub_100168310(&qword_1005741A0);
    sub_100168310(&unk_10057E2F0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100574720);
    }
  }
}

void *sub_1001A4AE4(unint64_t a1, uint64_t (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  if (a1 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = _swiftEmptyArrayStorage;
  if (!v8)
  {
    return v9;
  }

  v22 = _swiftEmptyArrayStorage;
  result = sub_1001A73F8(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v22;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v22 = v9;
        v14 = v9[2];
        v13 = v9[3];
        if (v14 >= v13 >> 1)
        {
          sub_1001A73F8((v13 > 1), v14 + 1, 1);
          v9 = v22;
        }

        ++v11;
        v20 = a2(0);
        v21 = sub_100018394(a3, a4);
        *&v19 = v12;
        v9[2] = v14 + 1;
        sub_1000109E4(&v19, &v9[5 * v14 + 4]);
      }

      while (v8 != v11);
    }

    else
    {
      v15 = (a1 + 32);
      do
      {
        v16 = *v15;
        v22 = v9;
        v18 = v9[2];
        v17 = v9[3];

        if (v18 >= v17 >> 1)
        {
          sub_1001A73F8((v17 > 1), v18 + 1, 1);
          v9 = v22;
        }

        v20 = a2(0);
        v21 = sub_100018394(a3, a4);
        *&v19 = v16;
        v9[2] = v18 + 1;
        sub_1000109E4(&v19, &v9[5 * v18 + 4]);
        ++v15;
        --v8;
      }

      while (v8);
    }

    return v9;
  }

  __break(1u);
  return result;
}

void *sub_1001A4CE8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v16 = _swiftEmptyArrayStorage;
  result = sub_1001A7478(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v16 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_1001A7478((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for LegacyLockup();
        v15 = sub_100018394(&qword_1005748C8, &type metadata accessor for LegacyLockup);
        *&v13 = v6;
        v3[2] = v8 + 1;
        sub_1000109E4(&v13, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = v3[2];
        v12 = v3[3];

        if (v11 >= v12 >> 1)
        {
          sub_1001A7478((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for LegacyLockup();
        v15 = sub_100018394(&qword_1005748C8, &type metadata accessor for LegacyLockup);
        *&v13 = v10;
        v3[2] = v11 + 1;
        sub_1000109E4(&v13, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1001A4F08(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v16 = _swiftEmptyArrayStorage;
  result = sub_1001A7478(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v16 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_1001A7478((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for LegacyCategoryLockup();
        v15 = sub_100018394(&qword_1005748B0, &type metadata accessor for LegacyCategoryLockup);
        *&v13 = v6;
        v3[2] = v8 + 1;
        sub_1000109E4(&v13, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = v3[2];
        v12 = v3[3];

        if (v11 >= v12 >> 1)
        {
          sub_1001A7478((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for LegacyCategoryLockup();
        v15 = sub_100018394(&qword_1005748B0, &type metadata accessor for LegacyCategoryLockup);
        *&v13 = v10;
        v3[2] = v11 + 1;
        sub_1000109E4(&v13, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1001A5128(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_1001A7630(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1001A7630((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_10016B7CC(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_1001A5250(unint64_t a1, unint64_t *a2)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = &_swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v15 = &_swiftEmptyArrayStorage;
  result = sub_1001A7630(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_100009F1C(0, a2);
        swift_dynamicCast();
        v15 = v5;
        v9 = v5[2];
        v8 = v5[3];
        if (v9 >= v8 >> 1)
        {
          sub_1001A7630((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        v5[2] = v9 + 1;
        sub_10016B7CC(v14, &v5[4 * v9 + 4]);
      }
    }

    else
    {
      v10 = (a1 + 32);
      sub_100009F1C(0, a2);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = v5[2];
        v12 = v5[3];
        if (v13 >= v12 >> 1)
        {
          sub_1001A7630((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        v5[2] = v13 + 1;
        sub_10016B7CC(v14, &v5[4 * v13 + 4]);
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

void *sub_1001A543C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_1001A7630(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {

      sub_100168088(&qword_100574880);
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1001A7630((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_10016B7CC(&v8, &v2[4 * v6 + 4]);
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1001A5564(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v16 = _swiftEmptyArrayStorage;
  result = sub_1001A78BC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v16 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_1001A78BC((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for Action();
        v15 = sub_100018394(&qword_100578430, &type metadata accessor for Action);
        *&v13 = v6;
        v3[2] = v8 + 1;
        sub_1000109E4(&v13, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = v3[2];
        v12 = v3[3];

        if (v11 >= v12 >> 1)
        {
          sub_1001A78BC((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for Action();
        v15 = sub_100018394(&qword_100578430, &type metadata accessor for Action);
        *&v13 = v10;
        v3[2] = v11 + 1;
        sub_1000109E4(&v13, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_1001A5794()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 importContext];

  type metadata accessor for FetchNonFollowedShows();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = qword_100572820;
  v4 = v1;
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = static PodcastsStateCoordinator.shared;

  v6 = sub_1001A8AF8(v4, v2, v5);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

id NonFollowedShowsSyncStorage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NonFollowedShowsSyncStorage();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t NonFollowedShowsSyncStorage.isNonFollowedShowsSyncDirty.getter()
{
  type metadata accessor for SyncKeysRepository();
  v0 = static SyncKeysRepository.shared.getter();
  v1 = SyncKeysRepository.isNonFollowedShowsSyncDirty.getter();

  return v1 & 1;
}

void NonFollowedShowsSyncStorage.isNonFollowedShowsSyncDirty.setter()
{
  type metadata accessor for SyncKeysRepository();
  v0 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.isNonFollowedShowsSyncDirty.setter();
}

void (*NonFollowedShowsSyncStorage.isNonFollowedShowsSyncDirty.modify(uint64_t a1))()
{
  *a1 = type metadata accessor for SyncKeysRepository();
  v2 = static SyncKeysRepository.shared.getter();
  v3 = SyncKeysRepository.isNonFollowedShowsSyncDirty.getter();

  *(a1 + 8) = v3 & 1;
  return sub_1001A5AC8;
}

void sub_1001A5AC8()
{
  v0 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.isNonFollowedShowsSyncDirty.setter();
}

uint64_t NonFollowedShowsSyncStorage.nonFollowedShowsLastSyncTimestamp.getter()
{
  type metadata accessor for SyncKeysRepository();
  v0 = static SyncKeysRepository.shared.getter();
  Sync = SyncKeysRepository.nonFollowedShowsLastSyncTimestamp.getter();

  return Sync;
}

void NonFollowedShowsSyncStorage.nonFollowedShowsLastSyncTimestamp.setter()
{
  type metadata accessor for SyncKeysRepository();
  v0 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.nonFollowedShowsLastSyncTimestamp.setter();
}

uint64_t (*sub_1001A5BE4(uint64_t *a1))()
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
  *(v2 + 32) = NonFollowedShowsSyncStorage.nonFollowedShowsLastSyncTimestamp.modify(v2);
  return sub_1001A5C4C;
}

void (*NonFollowedShowsSyncStorage.nonFollowedShowsLastSyncTimestamp.modify(uint64_t a1))()
{
  *(a1 + 16) = type metadata accessor for SyncKeysRepository();
  v2 = static SyncKeysRepository.shared.getter();
  Sync = SyncKeysRepository.nonFollowedShowsLastSyncTimestamp.getter();
  v5 = v4;

  *a1 = Sync;
  *(a1 + 8) = v5 & 1;
  return sub_1001A5CC8;
}

void sub_1001A5CC8()
{
  v0 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.nonFollowedShowsLastSyncTimestamp.setter();
}

uint64_t (*sub_1001A5D94(uint64_t **a1))()
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
  v2[4] = NonFollowedShowsSyncStorage.syncVersion.modify(v2);
  return sub_1001A90C0;
}

void (*NonFollowedShowsSyncStorage.syncVersion.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = type metadata accessor for SyncKeysRepository();
  v2 = static SyncKeysRepository.shared.getter();
  v3 = SyncKeysRepository.nonFollowedShowsSyncVersion.getter();
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
  return sub_1001A5E6C;
}

uint64_t sub_1001A5E9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  type metadata accessor for SyncKeysRepository();
  v4 = static SyncKeysRepository.shared.getter();
  v5 = a3();

  return v5;
}

uint64_t sub_1001A5F0C(uint64_t (*a1)(void))
{
  type metadata accessor for SyncKeysRepository();
  v2 = static SyncKeysRepository.shared.getter();
  v3 = a1();

  return v3;
}

void sub_1001A5F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  type metadata accessor for SyncKeysRepository();
  v8 = static SyncKeysRepository.shared.getter();
  a5(a1, a2);
}

void sub_1001A600C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  type metadata accessor for SyncKeysRepository();
  v6 = static SyncKeysRepository.shared.getter();
  a3(a1, a2);
}

uint64_t (*sub_1001A6084(uint64_t **a1))()
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
  v2[4] = NonFollowedShowsSyncStorage.podcastsDomainVersion.modify(v2);
  return sub_1001A90C0;
}

void sub_1001A60EC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*NonFollowedShowsSyncStorage.podcastsDomainVersion.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = type metadata accessor for SyncKeysRepository();
  v2 = static SyncKeysRepository.shared.getter();
  v3 = SyncKeysRepository.podcastsDomainVersion.getter();
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
  return sub_1001A61A4;
}

void sub_1001A61BC(uint64_t *a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {

    v6 = static SyncKeysRepository.shared.getter();
    a3(v5, v4);
  }

  else
  {
    v6 = static SyncKeysRepository.shared.getter();
    a3(v5, v4);
  }
}

Swift::Bool __swiftcall NonFollowedShowsSyncStorage.fetchHasLocalChanges()()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Podcasts();
  v33 = v6;
  v34 = sub_100018394(&qword_1005742C0, &type metadata accessor for Podcasts);
  v7 = sub_10000E680(aBlock);
  (*(*(v6 - 8) + 104))(v7, enum case for Podcasts.simplifiedSyncDirtyHandling(_:), v6);
  v8 = isFeatureEnabled(_:)();
  sub_100004590(aBlock);
  type metadata accessor for SyncKeysRepository();
  v9 = static SyncKeysRepository.shared.getter();
  v10 = SyncKeysRepository.isNonFollowedShowsSyncDirty.getter();

  v11 = v8 ^ 1 | v10;
  if (v8 & 1) != 0 || (v10)
  {
    return v11 & 1;
  }

  v12 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.nonFollowedShowsLastSyncTimestamp.getter();

  Date.init(timeIntervalSinceReferenceDate:)();
  v13 = objc_opt_self();
  v14 = [v13 predicateForNonFollowedShowsWithPlayState];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v16 = [v13 predicateForLastDatePlayedAfterDate:isa];

  v17 = [v14 AND:v16];
  v31 = v2;
  v18 = v17;

  v19 = [v13 predicateForLastDatePlayedNotInTheFuture];
  v20 = [v18 AND:v19];

  v21 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
  [v21 setIncludesPropertyValues:0];
  [v21 setIncludesSubentities:0];
  [v21 setFetchLimit:1];
  [v21 setPredicate:v20];
  v36 = 0;
  v22 = *&v1[OBJC_IVAR____TtC8Podcasts27NonFollowedShowsSyncStorage_importContext];
  v23 = swift_allocObject();
  v23[2] = v1;
  v23[3] = v21;
  v23[4] = &v36;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1001A7358;
  *(v24 + 24) = v23;
  v34 = sub_10002D7F0;
  v35 = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002D904;
  v33 = &unk_1004E23A8;
  v25 = _Block_copy(aBlock);
  v26 = v1;
  v27 = v21;

  [v22 performBlockAndWait:v25];
  _Block_release(v25);

  (*(v3 + 8))(v5, v31);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v30 = v36;

    v11 = v30 > 0;
    return v11 & 1;
  }

  __break(1u);
  return result;
}

uint64_t NonFollowedShowsSyncStorage.fetchNonFollowedShowsDictionaries()()
{
  v1 = sub_100168088(&qword_100574760);
  __chkstk_darwin(v1 - 8);
  v62 = &v51 - v2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v60 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
  v7 = [objc_opt_self() predicateForNonFollowedShowsWithPlayState];
  [v6 setPredicate:v7];

  [v6 setResultType:2];
  v8 = static RemoteNonFollowedShow.allSyncKeys.getter();
  sub_1001A5128(v8);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 setPropertiesToFetch:isa];

  sub_1000044A0((v0 + OBJC_IVAR____TtC8Podcasts27NonFollowedShowsSyncStorage_fetchNonFollowedShows), *(v0 + OBJC_IVAR____TtC8Podcasts27NonFollowedShowsSyncStorage_fetchNonFollowedShows + 24));
  type metadata accessor for FetchNonFollowedShows();
  v51 = v6;
  v10 = sub_10023DA00();
  v11 = *(v10 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v70 = _swiftEmptyArrayStorage;
    v13 = v10;
    sub_1001A75F0(0, v11, 0);
    v57 = v70;
    v55 = sub_100168088(&unk_100572CA0);
    result = v13;
    v15 = 0;
    v54 = v13 + 32;
    v58 = (v4 + 8);
    v59 = (v4 + 32);
    v63 = v3;
    v53 = v13;
    v52 = v11;
    v61 = (v4 + 56);
    do
    {
      if (v15 >= *(result + 16))
      {
        goto LABEL_34;
      }

      v56 = v15 + 1;
      v16 = *(v54 + 8 * v15);
      v17 = static _DictionaryStorage.copy(original:)();
      v18 = v61;
      v19 = v62;
      v20 = v17;
      v21 = v16 + 64;
      v22 = 1 << *(v16 + 32);
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v24 = v23 & *(v16 + 64);
      v25 = (v22 + 63) >> 6;
      v64 = v17 + 64;
      v65 = v16;

      v26 = 0;
      if (v24)
      {
        while (1)
        {
          v27 = __clz(__rbit64(v24));
          v24 &= v24 - 1;
LABEL_14:
          v30 = v27 | (v26 << 6);
          v31 = *(v65 + 56);
          v32 = (*(v65 + 48) + 16 * v30);
          v33 = v32[1];
          v66 = *v32;
          sub_10001B944(v31 + 32 * v30, v69);
          sub_10001B944(v69, &v67);

          v34 = swift_dynamicCast();
          v35 = *v18;
          if (v34)
          {
            v35(v19, 0, 1, v3);
            v36 = v60;
            (*v59)(v60, v19, v3);
            Date.timeIntervalSinceReferenceDate.getter();
            v68 = &type metadata for Double;
            *&v67 = v37;
            v38 = v36;
            v18 = v61;
            v19 = v62;
            (*v58)(v38, v3);
            sub_100004590(v69);
          }

          else
          {
            v35(v19, 1, 1, v3);
            sub_1001A4748(v19);
            sub_10016B7CC(v69, &v67);
          }

          *(v64 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
          v39 = (v20[6] + 16 * v30);
          *v39 = v66;
          v39[1] = v33;
          result = sub_10016B7CC(&v67, (v20[7] + 32 * v30));
          v40 = v20[2];
          v41 = __OFADD__(v40, 1);
          v42 = v40 + 1;
          if (v41)
          {
            break;
          }

          v20[2] = v42;
          if (!v24)
          {
            goto LABEL_9;
          }
        }

LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return result;
      }

LABEL_9:
      v28 = v26;
      while (1)
      {
        v26 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          __break(1u);
          goto LABEL_33;
        }

        if (v26 >= v25)
        {
          break;
        }

        v29 = *(v21 + 8 * v26);
        ++v28;
        if (v29)
        {
          v27 = __clz(__rbit64(v29));
          v24 = (v29 - 1) & v29;
          goto LABEL_14;
        }
      }

      v43 = v57;
      v70 = v57;
      v45 = v57[2];
      v44 = v57[3];
      if (v45 >= v44 >> 1)
      {
        sub_1001A75F0((v44 > 1), v45 + 1, 1);
        v43 = v70;
      }

      v43[2] = v45 + 1;
      v57 = v43;
      v43[v45 + 4] = v20;
      v15 = v56;
      result = v53;
    }

    while (v56 != v52);

    v12 = _swiftEmptyArrayStorage;
    v46 = v57[2];
    if (!v46)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  v46 = _swiftEmptyArrayStorage[2];
  if (v46)
  {
LABEL_24:
    *&v69[0] = _swiftEmptyArrayStorage;
    sub_1001A75F0(0, v46, 0);
    type metadata accessor for RemoteNonFollowedShow();
    v47 = 32;
    v12 = *&v69[0];
    do
    {

      v48 = Dictionary<>.flatteningUnknownSyncProperties<A>(for:)();

      *&v69[0] = v12;
      v50 = v12[2];
      v49 = v12[3];
      if (v50 >= v49 >> 1)
      {
        sub_1001A75F0((v49 > 1), v50 + 1, 1);
        v12 = *&v69[0];
      }

      v12[2] = v50 + 1;
      v12[v50 + 4] = v48;
      v47 += 8;
      --v46;
    }

    while (v46);

    return v12;
  }

LABEL_30:

  return v12;
}

Swift::Void __swiftcall NonFollowedShowsSyncStorage.unsafeRemoveImplicitFollowsIfNeeded(for:)(Swift::OpaquePointer a1)
{
  if (a1._rawValue >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = (v1 + OBJC_IVAR____TtC8Podcasts27NonFollowedShowsSyncStorage_podcastsStateCoordinator);
    do
    {
      if ((a1._rawValue & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(a1._rawValue + v4 + 4);
      }

      v7 = v6;
      ++v4;
      sub_1000044A0(v5, v5[3]);
      dispatch thunk of PodcastsStateCoordinatorProtocol.unsafeRemoveImplicitFollowIfNeeded(_:from:)();
    }

    while (v3 != v4);
  }
}

void static NonFollowedShowsSyncStorage.resetNonFollowedShowsSync()()
{
  type metadata accessor for SyncKeysRepository();
  v0 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.nonFollowedShowsLastSyncTimestamp.setter();

  v1 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.nonFollowedShowsSyncVersion.setter();

  v2 = static SyncKeysRepository.shared.getter();
  SyncKeysRepository.isNonFollowedShowsSyncDirty.setter();
}

uint64_t sub_1001A7170(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  sub_100009F1C(0, &qword_1005748A0);
  v8 = static OS_os_log.cloudSyncSignpost.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v9 = *(v5 + 8);
  v9(v7, v4);
  sub_100009F1C(0, &qword_100573AC0);
  *a3 = NSManagedObjectContext.count<A>(for:)();
  static os_signpost_type_t.end.getter();
  v10 = static OS_os_log.cloudSyncSignpost.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  return (v9)(v7, v4);
}

char *sub_1001A7364(char *a1, int64_t a2, char a3)
{
  result = sub_1001A79A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1001A7384(size_t a1, int64_t a2, char a3)
{
  result = sub_1001A891C(a1, a2, a3, *v3, &qword_100574878, &unk_100401D28, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

char *sub_1001A73C8(char *a1, int64_t a2, char a3)
{
  result = sub_1001A84E8(a1, a2, a3, *v3, &qword_100574828);
  *v3 = result;
  return result;
}

void *sub_1001A73F8(void *a1, int64_t a2, char a3)
{
  result = sub_1001A87D4(a1, a2, a3, *v3, &qword_1005748D8, &unk_100401D80, &qword_1005748E0);
  *v3 = result;
  return result;
}

void *sub_1001A7438(void *a1, int64_t a2, char a3)
{
  result = sub_1001A7CBC(a1, a2, a3, *v3, &unk_100573FC0, &unk_100401D60, &unk_100574640);
  *v3 = result;
  return result;
}

void *sub_1001A7478(void *a1, int64_t a2, char a3)
{
  result = sub_1001A87D4(a1, a2, a3, *v3, &qword_1005748B8, &unk_100401D70, &qword_1005748C0);
  *v3 = result;
  return result;
}

size_t sub_1001A74B8(size_t a1, int64_t a2, char a3)
{
  result = sub_1001A891C(a1, a2, a3, *v3, &qword_10057BBA0, &unk_100404540, &type metadata accessor for EpisodeOffer);
  *v3 = result;
  return result;
}

size_t sub_1001A74FC(size_t a1, int64_t a2, char a3)
{
  result = sub_1001A891C(a1, a2, a3, *v3, &qword_100574848, &unk_100401D00, &type metadata accessor for EpisodePlayState);
  *v3 = result;
  return result;
}

char *sub_1001A7540(char *a1, int64_t a2, char a3)
{
  result = sub_1001A83CC(a1, a2, a3, *v3, &unk_100574850);
  *v3 = result;
  return result;
}

char *sub_1001A7578(char *a1, int64_t a2, char a3)
{
  result = sub_1001A7AAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1001A7598(char *a1, int64_t a2, char a3)
{
  result = sub_1001A83CC(a1, a2, a3, *v3, &qword_100574810);
  *v3 = result;
  return result;
}

char *sub_1001A75D0(char *a1, int64_t a2, char a3)
{
  result = sub_1001A7BB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001A75F0(void *a1, int64_t a2, char a3)
{
  result = sub_1001A7CBC(a1, a2, a3, *v3, &qword_100574898, &unk_100401D58, &qword_100574880);
  *v3 = result;
  return result;
}

char *sub_1001A7630(char *a1, int64_t a2, char a3)
{
  result = sub_1001A7DF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1001A7650(size_t a1, int64_t a2, char a3)
{
  result = sub_1001A891C(a1, a2, a3, *v3, &qword_1005747B0, &unk_100406700, &type metadata accessor for ArtworkModel);
  *v3 = result;
  return result;
}

size_t sub_1001A7694(size_t a1, int64_t a2, char a3)
{
  result = sub_1001A891C(a1, a2, a3, *v3, &qword_100574818, &unk_100401CD0, type metadata accessor for DownloadJob);
  *v3 = result;
  return result;
}

char *sub_1001A76D8(char *a1, int64_t a2, char a3)
{
  result = sub_1001A7F00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001A76F8(void *a1, int64_t a2, char a3)
{
  result = sub_1001A801C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001A7718(void *a1, int64_t a2, char a3)
{
  result = sub_1001A8150(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001A7738(void *a1, int64_t a2, char a3)
{
  result = sub_1001A8298(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1001A7758(size_t a1, int64_t a2, char a3)
{
  result = sub_1001A891C(a1, a2, a3, *v3, &qword_100574190, &unk_100401850, &type metadata accessor for ModernShelf);
  *v3 = result;
  return result;
}

char *sub_1001A779C(char *a1, int64_t a2, char a3)
{
  result = sub_1001A84E8(a1, a2, a3, *v3, &qword_100574820);
  *v3 = result;
  return result;
}

char *sub_1001A77CC(char *a1, int64_t a2, char a3)
{
  result = sub_1001A83CC(a1, a2, a3, *v3, &qword_1005747A8);
  *v3 = result;
  return result;
}

size_t sub_1001A7804(size_t a1, int64_t a2, char a3)
{
  result = sub_1001A891C(a1, a2, a3, *v3, &qword_100574808, &unk_100401CC0, &type metadata accessor for MediaLibraryPid);
  *v3 = result;
  return result;
}

size_t sub_1001A7848(size_t a1, int64_t a2, char a3)
{
  result = sub_1001A891C(a1, a2, a3, *v3, &qword_100574908, &unk_100401DA0, &type metadata accessor for EpisodeEntity);
  *v3 = result;
  return result;
}

char *sub_1001A788C(char *a1, int64_t a2, char a3)
{
  result = sub_1001A84E8(a1, a2, a3, *v3, &qword_100574870);
  *v3 = result;
  return result;
}

void *sub_1001A78BC(void *a1, int64_t a2, char a3)
{
  result = sub_1001A87D4(a1, a2, a3, *v3, &unk_1005747F0, &unk_1004091D0, &unk_10057BB70);
  *v3 = result;
  return result;
}

size_t sub_1001A78FC(size_t a1, int64_t a2, char a3)
{
  result = sub_1001A85E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1001A791C(void *a1, int64_t a2, char a3)
{
  result = sub_1001A87D4(a1, a2, a3, *v3, &qword_1005748F8, &unk_100401D90, &qword_100574900);
  *v3 = result;
  return result;
}

size_t sub_1001A795C(size_t a1, int64_t a2, char a3)
{
  result = sub_1001A891C(a1, a2, a3, *v3, &qword_1005747D8, &unk_100401CA0, &type metadata accessor for TabMenu.Item);
  *v3 = result;
  return result;
}

char *sub_1001A79A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100168088(&qword_100574690);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001A7AAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100168088(&unk_10057A0B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1001A7BB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100168088(&qword_100574800);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}