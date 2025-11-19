Swift::Int sub_10032EA70()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_10032EAF0()
{
  sub_1005729F8();
}

Swift::Int sub_10032EB5C()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_10032EBD8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100685B68;
  v8._object = v3;
  v5 = sub_100574238(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_10032EC38(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xD000000000000019;
  }

  if (*v1)
  {
    v3 = "countOfPlaylistsInLibrary";
  }

  else
  {
    v3 = "nknown";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t _s9MusicCore15UnifiedMessagesO3MLIV5StateO8rawValueAGSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100685AE8;
  v6._object = a2;
  v4 = sub_100574238(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10032ECC8()
{
  result = qword_1006EE108;
  if (!qword_1006EE108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE108);
  }

  return result;
}

unint64_t sub_10032ED20()
{
  result = qword_1006EE110;
  if (!qword_1006EE110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE110);
  }

  return result;
}

unint64_t sub_10032EDB4()
{
  result = qword_1006EE118;
  if (!qword_1006EE118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE118);
  }

  return result;
}

MusicCore::AccessibilityIdentifier __swiftcall AccessibilityIdentifier.init(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v7 = qword_1006EE120;
  v8 = *algn_1006EE128;

  v9._countAndFlagsBits = 46;
  v9._object = 0xE100000000000000;
  sub_100572A98(v9);

  v10._countAndFlagsBits = countAndFlagsBits;
  v10._object = object;
  sub_100572A98(v10);

  v3 = v7;
  v4 = v8;
  v5 = countAndFlagsBits;
  v6 = object;
  result.name._object = v6;
  result.name._countAndFlagsBits = v5;
  result.rawValue._object = v4;
  result.rawValue._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_10032EEC4(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_100570AE8();
}

uint64_t *AccessibilityIdentifier.libraryAlbumsView.unsafeMutableAddressor()
{
  if (qword_1006E5358 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryAlbumsView;
}

uint64_t *AccessibilityIdentifier.libraryArtistsListView.unsafeMutableAddressor()
{
  if (qword_1006E5348 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryArtistsListView;
}

uint64_t *AccessibilityIdentifier.librarySongsView.unsafeMutableAddressor()
{
  if (qword_1006E53A0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.librarySongsView;
}

uint64_t *AccessibilityIdentifier.libraryPlaylistsView.unsafeMutableAddressor()
{
  if (qword_1006E5398 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryPlaylistsView;
}

uint64_t *AccessibilityIdentifier.libraryGenresView.unsafeMutableAddressor()
{
  if (qword_1006E5380 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryGenresView;
}

uint64_t *AccessibilityIdentifier.libraryRecentlyAddedView.unsafeMutableAddressor()
{
  if (qword_1006E5340 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryRecentlyAddedView;
}

uint64_t *AccessibilityIdentifier.libraryMadeForYouView.unsafeMutableAddressor()
{
  if (qword_1006E5388 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryMadeForYouView;
}

uint64_t *AccessibilityIdentifier.libraryMusicVideosView.unsafeMutableAddressor()
{
  if (qword_1006E5390 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryMusicVideosView;
}

uint64_t *AccessibilityIdentifier.libraryCompilationsView.unsafeMutableAddressor()
{
  if (qword_1006E5368 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryCompilationsView;
}

uint64_t *AccessibilityIdentifier.libraryComposersView.unsafeMutableAddressor()
{
  if (qword_1006E5360 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryComposersView;
}

uint64_t *AccessibilityIdentifier.libraryTVAndMoviesView.unsafeMutableAddressor()
{
  if (qword_1006E53A8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTVAndMoviesView;
}

uint64_t *AccessibilityIdentifier.libraryDownloadedView.unsafeMutableAddressor()
{
  if (qword_1006E5370 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryDownloadedView;
}

uint64_t *AccessibilityIdentifier.libraryDownloadingView.unsafeMutableAddressor()
{
  if (qword_1006E5378 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryDownloadingView;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1.unsafeMutableAddressor()
{
  if (qword_1006E54F0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2.unsafeMutableAddressor()
{
  if (qword_1006E54F8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3.unsafeMutableAddressor()
{
  if (qword_1006E5500 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4.unsafeMutableAddressor()
{
  if (qword_1006E5508 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5.unsafeMutableAddressor()
{
  if (qword_1006E5510 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6.unsafeMutableAddressor()
{
  if (qword_1006E5518 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7.unsafeMutableAddressor()
{
  if (qword_1006E5520 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8.unsafeMutableAddressor()
{
  if (qword_1006E5528 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8;
}

MusicCore::AccessibilityIdentifier __swiftcall AccessibilityIdentifier.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;

  v3 = countAndFlagsBits;
  v4 = object;
  v5 = countAndFlagsBits;
  v6 = object;
  result.name._object = v6;
  result.name._countAndFlagsBits = v5;
  result.rawValue._object = v4;
  result.rawValue._countAndFlagsBits = v3;
  return result;
}

uint64_t static AccessibilityIdentifier.named(_:)(uint64_t a1, void *a2)
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v5 = qword_1006EE120;

  v6._countAndFlagsBits = 46;
  v6._object = 0xE100000000000000;
  sub_100572A98(v6);

  v7._countAndFlagsBits = a1;
  v7._object = a2;
  sub_100572A98(v7);

  return v5;
}

void sub_10032F82C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_10032F890();
  v3 = v2;

  qword_1006EE120 = v1;
  *algn_1006EE128 = v3;
}

uint64_t sub_10032F890()
{
  v1 = v0;
  v2 = sub_100009DCC(&qword_1006E5D10);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v27[-v6];
  v30 = 0;
  v31 = 0xE000000000000000;
  v8 = [v1 bundleIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1005728D8();
    v12 = v11;

    v28 = 46;
    v29 = 0xE100000000000000;
    __chkstk_darwin(v13);
    *&v27[-16] = &v28;
    if (sub_100340840(0x7FFFFFFFFFFFFFFFLL, 1, sub_10019CCB8, &v27[-32], v10, v12, v27)[2])
    {

      goto LABEL_12;
    }
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  v14 = [v1 executableURL];
  if (v14)
  {
    v15 = v14;
    sub_10056C838();

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = sub_10056C8A8();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v5, v16, 1, v17);
  sub_1000C6E84(v5, v7);
  if ((*(v18 + 48))(v7, 1, v17) == 1)
  {
    sub_1000C6EF4(v7);
    v19 = 0xE500000000000000;
    v20._countAndFlagsBits = 0x636973754DLL;
  }

  else
  {
    v21 = sub_10056C7C8();
    v19 = v22;
    (*(v18 + 8))(v7, v17);
    v20._countAndFlagsBits = v21;
  }

  v20._object = v19;
  sub_100572A98(v20);

  sub_100573C58();
LABEL_12:
  v23 = sub_1005729D8();
  v25 = v24;

  v32._countAndFlagsBits = v23;
  v32._object = v25;
  sub_100572A98(v32);

  return v30;
}

uint64_t sub_10032FB94()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x6B726F77747241;
  v4._object = 0xE700000000000000;
  sub_100572A98(v4);

  static AccessibilityIdentifier.artwork = v1;
  *algn_1006FCA08 = v2;
  qword_1006FCA10 = 0x6B726F77747241;
  unk_1006FCA18 = 0xE700000000000000;
  return result;
}

uint64_t *AccessibilityIdentifier.artwork.unsafeMutableAddressor()
{
  if (qword_1006E5080 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.artwork;
}

uint64_t static AccessibilityIdentifier.artwork.getter()
{
  if (qword_1006E5080 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.artwork;

  return v0;
}

uint64_t sub_10032FD38()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000001ALL;
  v4._object = 0x80000001005B69E0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.doneButton = v1;
  *algn_1006FCA28 = v2;
  qword_1006FCA30 = 0xD00000000000001ALL;
  unk_1006FCA38 = 0x80000001005B69E0;
  return result;
}

uint64_t *AccessibilityIdentifier.doneButton.unsafeMutableAddressor()
{
  if (qword_1006E5088 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.doneButton;
}

uint64_t static AccessibilityIdentifier.doneButton.getter()
{
  if (qword_1006E5088 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.doneButton;

  return v0;
}

uint64_t sub_10032FEE4()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x747475426B636142;
  v4._object = 0xEA00000000006E6FLL;
  sub_100572A98(v4);

  static AccessibilityIdentifier.backButton = v1;
  *algn_1006FCA48 = v2;
  qword_1006FCA50 = 0x747475426B636142;
  unk_1006FCA58 = 0xEA00000000006E6FLL;
  return result;
}

uint64_t *AccessibilityIdentifier.backButton.unsafeMutableAddressor()
{
  if (qword_1006E5090 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.backButton;
}

uint64_t static AccessibilityIdentifier.backButton.getter()
{
  if (qword_1006E5090 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.backButton;

  return v0;
}

uint64_t sub_100330090()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 1701998413;
  v4._object = 0xE400000000000000;
  sub_100572A98(v4);

  static AccessibilityIdentifier.moreButton = v1;
  *algn_1006FCA68 = v2;
  qword_1006FCA70 = 1701998413;
  unk_1006FCA78 = 0xE400000000000000;
  return result;
}

uint64_t *AccessibilityIdentifier.moreButton.unsafeMutableAddressor()
{
  if (qword_1006E5098 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.moreButton;
}

uint64_t static AccessibilityIdentifier.moreButton.getter()
{
  if (qword_1006E5098 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.moreButton;

  return v0;
}

uint64_t sub_100330230()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000014;
  v4._object = 0x80000001005B69C0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.calendarButton = v1;
  *algn_1006FCA88 = v2;
  qword_1006FCA90 = 0xD000000000000014;
  unk_1006FCA98 = 0x80000001005B69C0;
  return result;
}

uint64_t *AccessibilityIdentifier.calendarButton.unsafeMutableAddressor()
{
  if (qword_1006E50A0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.calendarButton;
}

uint64_t static AccessibilityIdentifier.calendarButton.getter()
{
  if (qword_1006E50A0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.calendarButton;

  return v0;
}

uint64_t sub_1003303DC()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x65486C6961746544;
  v4._object = 0xEC00000072656461;
  sub_100572A98(v4);

  static AccessibilityIdentifier.detailHeader = v1;
  *algn_1006FCAA8 = v2;
  strcpy(&qword_1006FCAB0, "DetailHeader");
  unk_1006FCABD = 0;
  unk_1006FCABE = -5120;
  return result;
}

uint64_t *AccessibilityIdentifier.detailHeader.unsafeMutableAddressor()
{
  if (qword_1006E50A8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeader;
}

uint64_t static AccessibilityIdentifier.detailHeader.getter()
{
  if (qword_1006E50A8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeader;

  return v0;
}

uint64_t sub_100330588()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000012;
  v4._object = 0x80000001005B69A0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.detailHeaderTitle = v1;
  *algn_1006FCAC8 = v2;
  qword_1006FCAD0 = 0xD000000000000012;
  unk_1006FCAD8 = 0x80000001005B69A0;
  return result;
}

uint64_t *AccessibilityIdentifier.detailHeaderTitle.unsafeMutableAddressor()
{
  if (qword_1006E50B0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderTitle;
}

uint64_t static AccessibilityIdentifier.detailHeaderTitle.getter()
{
  if (qword_1006E50B0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderTitle;

  return v0;
}

uint64_t sub_100330734()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000001CLL;
  v4._object = 0x80000001005B6980;
  sub_100572A98(v4);

  static AccessibilityIdentifier.detailHeaderTitleFavorited = v1;
  *algn_1006FCAE8 = v2;
  qword_1006FCAF0 = 0xD00000000000001CLL;
  unk_1006FCAF8 = 0x80000001005B6980;
  return result;
}

uint64_t *AccessibilityIdentifier.detailHeaderTitleFavorited.unsafeMutableAddressor()
{
  if (qword_1006E50B8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderTitleFavorited;
}

uint64_t static AccessibilityIdentifier.detailHeaderTitleFavorited.getter()
{
  if (qword_1006E50B8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderTitleFavorited;

  return v0;
}

uint64_t sub_1003308E0()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000018;
  v4._object = 0x80000001005B6960;
  sub_100572A98(v4);

  static AccessibilityIdentifier.detailHeaderLabel = v1;
  *algn_1006FCB08 = v2;
  qword_1006FCB10 = 0xD000000000000018;
  unk_1006FCB18 = 0x80000001005B6960;
  return result;
}

uint64_t *AccessibilityIdentifier.detailHeaderLabel.unsafeMutableAddressor()
{
  if (qword_1006E50C0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderLabel;
}

uint64_t static AccessibilityIdentifier.detailHeaderLabel.getter()
{
  if (qword_1006E50C0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderLabel;

  return v0;
}

uint64_t sub_100330A8C()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000017;
  v4._object = 0x80000001005B6940;
  sub_100572A98(v4);

  static AccessibilityIdentifier.detailHeaderArtistLink = v1;
  *algn_1006FCB28 = v2;
  qword_1006FCB30 = 0xD000000000000017;
  unk_1006FCB38 = 0x80000001005B6940;
  return result;
}

uint64_t *AccessibilityIdentifier.detailHeaderArtistLink.unsafeMutableAddressor()
{
  if (qword_1006E50C8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderArtistLink;
}

uint64_t static AccessibilityIdentifier.detailHeaderArtistLink.getter()
{
  if (qword_1006E50C8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderArtistLink;

  return v0;
}

uint64_t sub_100330C38()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000001DLL;
  v4._object = 0x80000001005B6920;
  sub_100572A98(v4);

  static AccessibilityIdentifier.detailHeaderDescriptionLabel = v1;
  *algn_1006FCB48 = v2;
  qword_1006FCB50 = 0xD00000000000001DLL;
  unk_1006FCB58 = 0x80000001005B6920;
  return result;
}

uint64_t *AccessibilityIdentifier.detailHeaderDescriptionLabel.unsafeMutableAddressor()
{
  if (qword_1006E50D0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderDescriptionLabel;
}

uint64_t static AccessibilityIdentifier.detailHeaderDescriptionLabel.getter()
{
  if (qword_1006E50D0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderDescriptionLabel;

  return v0;
}

uint64_t sub_100330DE4()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000011;
  v4._object = 0x80000001005B6900;
  sub_100572A98(v4);

  static AccessibilityIdentifier.detailHeaderMore = v1;
  *algn_1006FCB68 = v2;
  qword_1006FCB70 = 0xD000000000000011;
  unk_1006FCB78 = 0x80000001005B6900;
  return result;
}

uint64_t *AccessibilityIdentifier.detailHeaderMore.unsafeMutableAddressor()
{
  if (qword_1006E50D8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderMore;
}

uint64_t static AccessibilityIdentifier.detailHeaderMore.getter()
{
  if (qword_1006E50D8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderMore;

  return v0;
}

uint64_t sub_100330F90()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000015;
  v4._object = 0x80000001005B68E0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playIntentButton = v1;
  *algn_1006FCB88 = v2;
  qword_1006FCB90 = 0xD000000000000015;
  unk_1006FCB98 = 0x80000001005B68E0;
  return result;
}

uint64_t *AccessibilityIdentifier.playIntentButton.unsafeMutableAddressor()
{
  if (qword_1006E50E0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playIntentButton;
}

uint64_t static AccessibilityIdentifier.playIntentButton.getter()
{
  if (qword_1006E50E0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playIntentButton;

  return v0;
}

uint64_t sub_10033113C()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000018;
  v4._object = 0x80000001005B68C0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.shuffleIntentButton = v1;
  *algn_1006FCBA8 = v2;
  qword_1006FCBB0 = 0xD000000000000018;
  unk_1006FCBB8 = 0x80000001005B68C0;
  return result;
}

uint64_t *AccessibilityIdentifier.shuffleIntentButton.unsafeMutableAddressor()
{
  if (qword_1006E50E8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.shuffleIntentButton;
}

uint64_t static AccessibilityIdentifier.shuffleIntentButton.getter()
{
  if (qword_1006E50E8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.shuffleIntentButton;

  return v0;
}

uint64_t sub_1003312E8()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000001DLL;
  v4._object = 0x80000001005B68A0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.startSingingIntentButton = v1;
  *algn_1006FCBC8 = v2;
  qword_1006FCBD0 = 0xD00000000000001DLL;
  unk_1006FCBD8 = 0x80000001005B68A0;
  return result;
}

uint64_t *AccessibilityIdentifier.startSingingIntentButton.unsafeMutableAddressor()
{
  if (qword_1006E50F0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.startSingingIntentButton;
}

uint64_t static AccessibilityIdentifier.startSingingIntentButton.getter()
{
  if (qword_1006E50F0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.startSingingIntentButton;

  return v0;
}

uint64_t sub_100331494()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x6C6C6543676E6F53;
  v4._object = 0xE800000000000000;
  sub_100572A98(v4);

  static AccessibilityIdentifier.songCell = v1;
  *algn_1006FCBE8 = v2;
  qword_1006FCBF0 = 0x6C6C6543676E6F53;
  unk_1006FCBF8 = 0xE800000000000000;
  return result;
}

uint64_t *AccessibilityIdentifier.songCell.unsafeMutableAddressor()
{
  if (qword_1006E50F8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.songCell;
}

uint64_t static AccessibilityIdentifier.songCell.getter()
{
  if (qword_1006E50F8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.songCell;

  return v0;
}

uint64_t sub_100331638()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x73694C6B63617254;
  v4._object = 0xED00006C6C654374;
  sub_100572A98(v4);

  static AccessibilityIdentifier.trackListCell = v1;
  *algn_1006FCC08 = v2;
  strcpy(&qword_1006FCC10, "TrackListCell");
  unk_1006FCC1E = -4864;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCell.unsafeMutableAddressor()
{
  if (qword_1006E5100 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCell;
}

uint64_t static AccessibilityIdentifier.trackListCell.getter()
{
  if (qword_1006E5100 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCell;

  return v0;
}

uint64_t sub_1003317E8()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000013;
  v4._object = 0x80000001005B6880;
  sub_100572A98(v4);

  static AccessibilityIdentifier.trackListEmptyCell = v1;
  *algn_1006FCC28 = v2;
  qword_1006FCC30 = 0xD000000000000013;
  unk_1006FCC38 = 0x80000001005B6880;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListEmptyCell.unsafeMutableAddressor()
{
  if (qword_1006E5108 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListEmptyCell;
}

uint64_t static AccessibilityIdentifier.trackListEmptyCell.getter()
{
  if (qword_1006E5108 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListEmptyCell;

  return v0;
}

uint64_t sub_100331994()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000015;
  v4._object = 0x80000001005B6860;
  sub_100572A98(v4);

  static AccessibilityIdentifier.trackListCellArtwork = v1;
  *algn_1006FCC48 = v2;
  qword_1006FCC50 = 0xD000000000000015;
  unk_1006FCC58 = 0x80000001005B6860;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellArtwork.unsafeMutableAddressor()
{
  if (qword_1006E5110 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellArtwork;
}

uint64_t static AccessibilityIdentifier.trackListCellArtwork.getter()
{
  if (qword_1006E5110 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellArtwork;

  return v0;
}

uint64_t sub_100331B40()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000001CLL;
  v4._object = 0x80000001005B6840;
  sub_100572A98(v4);

  static AccessibilityIdentifier.trackListCellFavoriteBadge = v1;
  *algn_1006FCC68 = v2;
  qword_1006FCC70 = 0xD00000000000001CLL;
  unk_1006FCC78 = 0x80000001005B6840;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellFavoriteBadge.unsafeMutableAddressor()
{
  if (qword_1006E5118 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellFavoriteBadge;
}

uint64_t static AccessibilityIdentifier.trackListCellFavoriteBadge.getter()
{
  if (qword_1006E5118 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellFavoriteBadge;

  return v0;
}

uint64_t sub_100331CEC()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000001BLL;
  v4._object = 0x80000001005B6820;
  sub_100572A98(v4);

  static AccessibilityIdentifier.trackListCellPopularBadge = v1;
  *algn_1006FCC88 = v2;
  qword_1006FCC90 = 0xD00000000000001BLL;
  unk_1006FCC98 = 0x80000001005B6820;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellPopularBadge.unsafeMutableAddressor()
{
  if (qword_1006E5120 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellPopularBadge;
}

uint64_t static AccessibilityIdentifier.trackListCellPopularBadge.getter()
{
  if (qword_1006E5120 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellPopularBadge;

  return v0;
}

uint64_t sub_100331E98()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000019;
  v4._object = 0x80000001005B6800;
  sub_100572A98(v4);

  static AccessibilityIdentifier.trackListCellTrackNumber = v1;
  *algn_1006FCCA8 = v2;
  qword_1006FCCB0 = 0xD000000000000019;
  unk_1006FCCB8 = 0x80000001005B6800;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellTrackNumber.unsafeMutableAddressor()
{
  if (qword_1006E5128 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellTrackNumber;
}

uint64_t static AccessibilityIdentifier.trackListCellTrackNumber.getter()
{
  if (qword_1006E5128 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellTrackNumber;

  return v0;
}

uint64_t sub_100332044()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000019;
  v4._object = 0x80000001005B67E0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.trackListCellChartNumber = v1;
  *algn_1006FCCC8 = v2;
  qword_1006FCCD0 = 0xD000000000000019;
  unk_1006FCCD8 = 0x80000001005B67E0;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellChartNumber.unsafeMutableAddressor()
{
  if (qword_1006E5130 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellChartNumber;
}

uint64_t static AccessibilityIdentifier.trackListCellChartNumber.getter()
{
  if (qword_1006E5130 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellChartNumber;

  return v0;
}

uint64_t sub_1003321F0()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000017;
  v4._object = 0x80000001005B67C0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.trackListCellVideoIcon = v1;
  *algn_1006FCCE8 = v2;
  qword_1006FCCF0 = 0xD000000000000017;
  unk_1006FCCF8 = 0x80000001005B67C0;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellVideoIcon.unsafeMutableAddressor()
{
  if (qword_1006E5138 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellVideoIcon;
}

uint64_t static AccessibilityIdentifier.trackListCellVideoIcon.getter()
{
  if (qword_1006E5138 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellVideoIcon;

  return v0;
}

uint64_t sub_10033239C()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000013;
  v4._object = 0x80000001005B67A0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.trackListCellTitle = v1;
  *algn_1006FCD08 = v2;
  qword_1006FCD10 = 0xD000000000000013;
  unk_1006FCD18 = 0x80000001005B67A0;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellTitle.unsafeMutableAddressor()
{
  if (qword_1006E5140 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellTitle;
}

uint64_t static AccessibilityIdentifier.trackListCellTitle.getter()
{
  if (qword_1006E5140 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellTitle;

  return v0;
}

uint64_t sub_100332548()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000014;
  v4._object = 0x80000001005B6780;
  sub_100572A98(v4);

  static AccessibilityIdentifier.trackListCellArtist = v1;
  *algn_1006FCD28 = v2;
  qword_1006FCD30 = 0xD000000000000014;
  unk_1006FCD38 = 0x80000001005B6780;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellArtist.unsafeMutableAddressor()
{
  if (qword_1006E5148 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellArtist;
}

uint64_t static AccessibilityIdentifier.trackListCellArtist.getter()
{
  if (qword_1006E5148 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellArtist;

  return v0;
}

uint64_t sub_1003326F4()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000013;
  v4._object = 0x80000001005B6760;
  sub_100572A98(v4);

  static AccessibilityIdentifier.trackListCellAlbum = v1;
  *algn_1006FCD48 = v2;
  qword_1006FCD50 = 0xD000000000000013;
  unk_1006FCD58 = 0x80000001005B6760;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellAlbum.unsafeMutableAddressor()
{
  if (qword_1006E5150 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellAlbum;
}

uint64_t static AccessibilityIdentifier.trackListCellAlbum.getter()
{
  if (qword_1006E5150 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellAlbum;

  return v0;
}

uint64_t sub_1003328A0()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000016;
  v4._object = 0x80000001005B6740;
  sub_100572A98(v4);

  static AccessibilityIdentifier.trackListCellDuration = v1;
  *algn_1006FCD68 = v2;
  qword_1006FCD70 = 0xD000000000000016;
  unk_1006FCD78 = 0x80000001005B6740;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellDuration.unsafeMutableAddressor()
{
  if (qword_1006E5158 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellDuration;
}

uint64_t static AccessibilityIdentifier.trackListCellDuration.getter()
{
  if (qword_1006E5158 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellDuration;

  return v0;
}

uint64_t sub_100332A4C()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000014;
  v4._object = 0x80000001005B6720;
  sub_100572A98(v4);

  static AccessibilityIdentifier.trackListReleaseDate = v1;
  *algn_1006FCD88 = v2;
  qword_1006FCD90 = 0xD000000000000014;
  unk_1006FCD98 = 0x80000001005B6720;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListReleaseDate.unsafeMutableAddressor()
{
  if (qword_1006E5160 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListReleaseDate;
}

uint64_t static AccessibilityIdentifier.trackListReleaseDate.getter()
{
  if (qword_1006E5160 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListReleaseDate;

  return v0;
}

uint64_t sub_100332BF8()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000019;
  v4._object = 0x80000001005B6700;
  sub_100572A98(v4);

  static AccessibilityIdentifier.trackListCountAndDuration = v1;
  *algn_1006FCDA8 = v2;
  qword_1006FCDB0 = 0xD000000000000019;
  unk_1006FCDB8 = 0x80000001005B6700;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCountAndDuration.unsafeMutableAddressor()
{
  if (qword_1006E5168 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCountAndDuration;
}

uint64_t static AccessibilityIdentifier.trackListCountAndDuration.getter()
{
  if (qword_1006E5168 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCountAndDuration;

  return v0;
}

uint64_t sub_100332DA4()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000012;
  v4._object = 0x80000001005B66E0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.trackListCopyright = v1;
  *algn_1006FCDC8 = v2;
  qword_1006FCDD0 = 0xD000000000000012;
  unk_1006FCDD8 = 0x80000001005B66E0;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCopyright.unsafeMutableAddressor()
{
  if (qword_1006E5170 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCopyright;
}

uint64_t static AccessibilityIdentifier.trackListCopyright.getter()
{
  if (qword_1006E5170 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCopyright;

  return v0;
}

uint64_t sub_100332F50()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000014;
  v4._object = 0x80000001005B66C0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.trackListRecordLabel = v1;
  *algn_1006FCDE8 = v2;
  qword_1006FCDF0 = 0xD000000000000014;
  unk_1006FCDF8 = 0x80000001005B66C0;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListRecordLabel.unsafeMutableAddressor()
{
  if (qword_1006E5178 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListRecordLabel;
}

uint64_t static AccessibilityIdentifier.trackListRecordLabel.getter()
{
  if (qword_1006E5178 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListRecordLabel;

  return v0;
}

uint64_t sub_1003330FC()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x64616F6C6E776F44;
  v4._object = 0xEE00737574617453;
  sub_100572A98(v4);

  static AccessibilityIdentifier.downloadStatus = v1;
  *algn_1006FCE08 = v2;
  strcpy(&qword_1006FCE10, "DownloadStatus");
  unk_1006FCE1F = -18;
  return result;
}

uint64_t *AccessibilityIdentifier.downloadStatus.unsafeMutableAddressor()
{
  if (qword_1006E5180 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.downloadStatus;
}

uint64_t static AccessibilityIdentifier.downloadStatus.getter()
{
  if (qword_1006E5180 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.downloadStatus;

  return v0;
}

uint64_t sub_1003332AC()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000010;
  v4._object = 0x80000001005B66A0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.lyricsStaticView = v1;
  *algn_1006FCE28 = v2;
  qword_1006FCE30 = 0xD000000000000010;
  unk_1006FCE38 = 0x80000001005B66A0;
  return result;
}

uint64_t *AccessibilityIdentifier.lyricsStaticView.unsafeMutableAddressor()
{
  if (qword_1006E5188 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.lyricsStaticView;
}

uint64_t static AccessibilityIdentifier.lyricsStaticView.getter()
{
  if (qword_1006E5188 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.lyricsStaticView;

  return v0;
}

uint64_t sub_100333458()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000010;
  v4._object = 0x80000001005B6680;
  sub_100572A98(v4);

  static AccessibilityIdentifier.lyricsSyncedView = v1;
  *algn_1006FCE48 = v2;
  qword_1006FCE50 = 0xD000000000000010;
  unk_1006FCE58 = 0x80000001005B6680;
  return result;
}

uint64_t *AccessibilityIdentifier.lyricsSyncedView.unsafeMutableAddressor()
{
  if (qword_1006E5190 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.lyricsSyncedView;
}

uint64_t static AccessibilityIdentifier.lyricsSyncedView.getter()
{
  if (qword_1006E5190 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.lyricsSyncedView;

  return v0;
}

uint64_t sub_100333604()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x7474754279616C50;
  v4._object = 0xEA00000000006E6FLL;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playButton = v1;
  *algn_1006FCE68 = v2;
  qword_1006FCE70 = 0x7474754279616C50;
  unk_1006FCE78 = 0xEA00000000006E6FLL;
  return result;
}

uint64_t *AccessibilityIdentifier.playButton.unsafeMutableAddressor()
{
  if (qword_1006E5198 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playButton;
}

uint64_t static AccessibilityIdentifier.playButton.getter()
{
  if (qword_1006E5198 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playButton;

  return v0;
}

uint64_t sub_1003337B0()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x7475426573756150;
  v4._object = 0xEB000000006E6F74;
  sub_100572A98(v4);

  static AccessibilityIdentifier.pauseButton = v1;
  *algn_1006FCE88 = v2;
  qword_1006FCE90 = 0x7475426573756150;
  unk_1006FCE98 = 0xEB000000006E6F74;
  return result;
}

uint64_t *AccessibilityIdentifier.pauseButton.unsafeMutableAddressor()
{
  if (qword_1006E51A0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.pauseButton;
}

uint64_t static AccessibilityIdentifier.pauseButton.getter()
{
  if (qword_1006E51A0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.pauseButton;

  return v0;
}

uint64_t sub_10033395C()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x74747542706F7453;
  v4._object = 0xEA00000000006E6FLL;
  sub_100572A98(v4);

  static AccessibilityIdentifier.stopButton = v1;
  *algn_1006FCEA8 = v2;
  qword_1006FCEB0 = 0x74747542706F7453;
  unk_1006FCEB8 = 0xEA00000000006E6FLL;
  return result;
}

uint64_t *AccessibilityIdentifier.stopButton.unsafeMutableAddressor()
{
  if (qword_1006E51A8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.stopButton;
}

uint64_t static AccessibilityIdentifier.stopButton.getter()
{
  if (qword_1006E51A8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.stopButton;

  return v0;
}

uint64_t sub_100333B08()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000011;
  v4._object = 0x80000001005B6660;
  sub_100572A98(v4);

  static AccessibilityIdentifier.skipForwardButton = v1;
  *algn_1006FCEC8 = v2;
  qword_1006FCED0 = 0xD000000000000011;
  unk_1006FCED8 = 0x80000001005B6660;
  return result;
}

uint64_t *AccessibilityIdentifier.skipForwardButton.unsafeMutableAddressor()
{
  if (qword_1006E51B0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.skipForwardButton;
}

uint64_t static AccessibilityIdentifier.skipForwardButton.getter()
{
  if (qword_1006E51B0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.skipForwardButton;

  return v0;
}

uint64_t sub_100333CB4()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000012;
  v4._object = 0x80000001005B6640;
  sub_100572A98(v4);

  static AccessibilityIdentifier.skipBackwardButton = v1;
  *algn_1006FCEE8 = v2;
  qword_1006FCEF0 = 0xD000000000000012;
  unk_1006FCEF8 = 0x80000001005B6640;
  return result;
}

uint64_t *AccessibilityIdentifier.skipBackwardButton.unsafeMutableAddressor()
{
  if (qword_1006E51B8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.skipBackwardButton;
}

uint64_t static AccessibilityIdentifier.skipBackwardButton.getter()
{
  if (qword_1006E51B8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.skipBackwardButton;

  return v0;
}

uint64_t sub_100333E60()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x74747542706D754ALL;
  v4._object = 0xEA00000000006E6FLL;
  sub_100572A98(v4);

  static AccessibilityIdentifier.jumpButton = v1;
  *algn_1006FCF08 = v2;
  qword_1006FCF10 = 0x74747542706D754ALL;
  unk_1006FCF18 = 0xEA00000000006E6FLL;
  return result;
}

uint64_t *AccessibilityIdentifier.jumpButton.unsafeMutableAddressor()
{
  if (qword_1006E51C0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.jumpButton;
}

uint64_t static AccessibilityIdentifier.jumpButton.getter()
{
  if (qword_1006E51C0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.jumpButton;

  return v0;
}

uint64_t sub_10033400C()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x547972617262694CLL;
  v4._object = 0xEA00000000006261;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryTab = v1;
  *algn_1006FCF28 = v2;
  qword_1006FCF30 = 0x547972617262694CLL;
  unk_1006FCF38 = 0xEA00000000006261;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryTab.unsafeMutableAddressor()
{
  if (qword_1006E51C8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTab;
}

uint64_t static AccessibilityIdentifier.libraryTab.getter()
{
  if (qword_1006E51C8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTab;

  return v0;
}

uint64_t sub_1003341B8()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x6F4E6E657473694CLL;
  v4._object = 0xEC00000062615477;
  sub_100572A98(v4);

  static AccessibilityIdentifier.listenNowTab = v1;
  *algn_1006FCF48 = v2;
  strcpy(&qword_1006FCF50, "ListenNowTab");
  unk_1006FCF5D = 0;
  unk_1006FCF5E = -5120;
  return result;
}

uint64_t *AccessibilityIdentifier.listenNowTab.unsafeMutableAddressor()
{
  if (qword_1006E51D0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.listenNowTab;
}

uint64_t static AccessibilityIdentifier.listenNowTab.getter()
{
  if (qword_1006E51D0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.listenNowTab;

  return v0;
}

uint64_t sub_100334364()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x61546573776F7242;
  v4._object = 0xE900000000000062;
  sub_100572A98(v4);

  static AccessibilityIdentifier.browseTab = v1;
  *algn_1006FCF68 = v2;
  qword_1006FCF70 = 0x61546573776F7242;
  unk_1006FCF78 = 0xE900000000000062;
  return result;
}

uint64_t *AccessibilityIdentifier.browseTab.unsafeMutableAddressor()
{
  if (qword_1006E51D8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.browseTab;
}

uint64_t static AccessibilityIdentifier.browseTab.getter()
{
  if (qword_1006E51D8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.browseTab;

  return v0;
}

uint64_t sub_100334510()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x6261546F69646152;
  v4._object = 0xE800000000000000;
  sub_100572A98(v4);

  static AccessibilityIdentifier.radioTab = v1;
  *algn_1006FCF88 = v2;
  qword_1006FCF90 = 0x6261546F69646152;
  unk_1006FCF98 = 0xE800000000000000;
  return result;
}

uint64_t *AccessibilityIdentifier.radioTab.unsafeMutableAddressor()
{
  if (qword_1006E51E0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.radioTab;
}

uint64_t static AccessibilityIdentifier.radioTab.getter()
{
  if (qword_1006E51E0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.radioTab;

  return v0;
}

uint64_t sub_1003346B4()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x6154686372616553;
  v4._object = 0xE900000000000062;
  sub_100572A98(v4);

  static AccessibilityIdentifier.searchTab = v1;
  *algn_1006FCFA8 = v2;
  qword_1006FCFB0 = 0x6154686372616553;
  unk_1006FCFB8 = 0xE900000000000062;
  return result;
}

uint64_t *AccessibilityIdentifier.searchTab.unsafeMutableAddressor()
{
  if (qword_1006E51E8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.searchTab;
}

uint64_t static AccessibilityIdentifier.searchTab.getter()
{
  if (qword_1006E51E8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.searchTab;

  return v0;
}

uint64_t sub_100334860()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000016;
  v4._object = 0x80000001005B6620;
  sub_100572A98(v4);

  static AccessibilityIdentifier.containerDetailHeader = v1;
  *algn_1006FCFC8 = v2;
  qword_1006FCFD0 = 0xD000000000000016;
  unk_1006FCFD8 = 0x80000001005B6620;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailHeader.unsafeMutableAddressor()
{
  if (qword_1006E51F0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeader;
}

uint64_t static AccessibilityIdentifier.containerDetailHeader.getter()
{
  if (qword_1006E51F0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeader;

  return v0;
}

uint64_t sub_100334A0C()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000001ELL;
  v4._object = 0x80000001005B6600;
  sub_100572A98(v4);

  static AccessibilityIdentifier.containerDetailHeaderArtwork = v1;
  *algn_1006FCFE8 = v2;
  qword_1006FCFF0 = 0xD00000000000001ELL;
  unk_1006FCFF8 = 0x80000001005B6600;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailHeaderArtwork.unsafeMutableAddressor()
{
  if (qword_1006E51F8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeaderArtwork;
}

uint64_t static AccessibilityIdentifier.containerDetailHeaderArtwork.getter()
{
  if (qword_1006E51F8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeaderArtwork;

  return v0;
}

uint64_t sub_100334BB8()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000001CLL;
  v4._object = 0x80000001005B65E0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.containerDetailHeaderTitle = v1;
  *algn_1006FD008 = v2;
  qword_1006FD010 = 0xD00000000000001CLL;
  unk_1006FD018 = 0x80000001005B65E0;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailHeaderTitle.unsafeMutableAddressor()
{
  if (qword_1006E5200 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeaderTitle;
}

uint64_t static AccessibilityIdentifier.containerDetailHeaderTitle.getter()
{
  if (qword_1006E5200 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeaderTitle;

  return v0;
}

uint64_t sub_100334D64()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001005B65B0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.containerDetailHeaderAttribution = v1;
  *algn_1006FD028 = v2;
  qword_1006FD030 = 0xD000000000000022;
  unk_1006FD038 = 0x80000001005B65B0;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailHeaderAttribution.unsafeMutableAddressor()
{
  if (qword_1006E5208 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeaderAttribution;
}

uint64_t static AccessibilityIdentifier.containerDetailHeaderAttribution.getter()
{
  if (qword_1006E5208 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeaderAttribution;

  return v0;
}

uint64_t sub_100334F10()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000001FLL;
  v4._object = 0x80000001005B6590;
  sub_100572A98(v4);

  static AccessibilityIdentifier.containerDetailHeaderMetadata = v1;
  *algn_1006FD048 = v2;
  qword_1006FD050 = 0xD00000000000001FLL;
  unk_1006FD058 = 0x80000001005B6590;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailHeaderMetadata.unsafeMutableAddressor()
{
  if (qword_1006E5210 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeaderMetadata;
}

uint64_t static AccessibilityIdentifier.containerDetailHeaderMetadata.getter()
{
  if (qword_1006E5210 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeaderMetadata;

  return v0;
}

uint64_t sub_1003350BC()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001005B6560;
  sub_100572A98(v4);

  static AccessibilityIdentifier.containerDetailHeaderDescription = v1;
  *algn_1006FD068 = v2;
  qword_1006FD070 = 0xD000000000000022;
  unk_1006FD078 = 0x80000001005B6560;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailHeaderDescription.unsafeMutableAddressor()
{
  if (qword_1006E5218 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeaderDescription;
}

uint64_t static AccessibilityIdentifier.containerDetailHeaderDescription.getter()
{
  if (qword_1006E5218 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeaderDescription;

  return v0;
}

uint64_t sub_100335268()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000027;
  v4._object = 0x80000001005B6530;
  sub_100572A98(v4);

  static AccessibilityIdentifier.containerDetailContextualActionsButton = v1;
  *algn_1006FD088 = v2;
  qword_1006FD090 = 0xD000000000000027;
  unk_1006FD098 = 0x80000001005B6530;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailContextualActionsButton.unsafeMutableAddressor()
{
  if (qword_1006E5220 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailContextualActionsButton;
}

uint64_t static AccessibilityIdentifier.containerDetailContextualActionsButton.getter()
{
  if (qword_1006E5220 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailContextualActionsButton;

  return v0;
}

uint64_t sub_100335414()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000020;
  v4._object = 0x80000001005B6500;
  sub_100572A98(v4);

  static AccessibilityIdentifier.containerDetailFloatingArtwork = v1;
  *algn_1006FD0A8 = v2;
  qword_1006FD0B0 = 0xD000000000000020;
  unk_1006FD0B8 = 0x80000001005B6500;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailFloatingArtwork.unsafeMutableAddressor()
{
  if (qword_1006E5228 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailFloatingArtwork;
}

uint64_t static AccessibilityIdentifier.containerDetailFloatingArtwork.getter()
{
  if (qword_1006E5228 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailFloatingArtwork;

  return v0;
}

uint64_t sub_1003355C0()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000001BLL;
  v4._object = 0x80000001005B64E0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.containerDetailStateButton = v1;
  *algn_1006FD0C8 = v2;
  qword_1006FD0D0 = 0xD00000000000001BLL;
  unk_1006FD0D8 = 0x80000001005B64E0;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailStateButton.unsafeMutableAddressor()
{
  if (qword_1006E5230 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailStateButton;
}

uint64_t static AccessibilityIdentifier.containerDetailStateButton.getter()
{
  if (qword_1006E5230 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailStateButton;

  return v0;
}

uint64_t sub_10033576C()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000019;
  v4._object = 0x80000001005B64C0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.containerDetailAddButton = v1;
  *algn_1006FD0E8 = v2;
  qword_1006FD0F0 = 0xD000000000000019;
  unk_1006FD0F8 = 0x80000001005B64C0;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailAddButton.unsafeMutableAddressor()
{
  if (qword_1006E5238 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailAddButton;
}

uint64_t static AccessibilityIdentifier.containerDetailAddButton.getter()
{
  if (qword_1006E5238 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailAddButton;

  return v0;
}

uint64_t sub_100335918()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000001ELL;
  v4._object = 0x80000001005B64A0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.containerDetailDownloadButton = v1;
  *algn_1006FD108 = v2;
  qword_1006FD110 = 0xD00000000000001ELL;
  unk_1006FD118 = 0x80000001005B64A0;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailDownloadButton.unsafeMutableAddressor()
{
  if (qword_1006E5240 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailDownloadButton;
}

uint64_t static AccessibilityIdentifier.containerDetailDownloadButton.getter()
{
  if (qword_1006E5240 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailDownloadButton;

  return v0;
}

uint64_t sub_100335AC4()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000024;
  v4._object = 0x80000001005B6470;
  sub_100572A98(v4);

  static AccessibilityIdentifier.containerDetailDownloadQueuedButton = v1;
  *algn_1006FD128 = v2;
  qword_1006FD130 = 0xD000000000000024;
  unk_1006FD138 = 0x80000001005B6470;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailDownloadQueuedButton.unsafeMutableAddressor()
{
  if (qword_1006E5248 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailDownloadQueuedButton;
}

uint64_t static AccessibilityIdentifier.containerDetailDownloadQueuedButton.getter()
{
  if (qword_1006E5248 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailDownloadQueuedButton;

  return v0;
}

uint64_t sub_100335C70()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000024;
  v4._object = 0x80000001005B6440;
  sub_100572A98(v4);

  static AccessibilityIdentifier.containerDetailDownloadPausedButton = v1;
  *algn_1006FD148 = v2;
  qword_1006FD150 = 0xD000000000000024;
  unk_1006FD158 = 0x80000001005B6440;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailDownloadPausedButton.unsafeMutableAddressor()
{
  if (qword_1006E5250 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailDownloadPausedButton;
}

uint64_t static AccessibilityIdentifier.containerDetailDownloadPausedButton.getter()
{
  if (qword_1006E5250 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailDownloadPausedButton;

  return v0;
}

uint64_t sub_100335E1C()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000021;
  v4._object = 0x80000001005B6410;
  sub_100572A98(v4);

  static AccessibilityIdentifier.containerDetailDownloadingButton = v1;
  *algn_1006FD168 = v2;
  qword_1006FD170 = 0xD000000000000021;
  unk_1006FD178 = 0x80000001005B6410;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailDownloadingButton.unsafeMutableAddressor()
{
  if (qword_1006E5258 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailDownloadingButton;
}

uint64_t static AccessibilityIdentifier.containerDetailDownloadingButton.getter()
{
  if (qword_1006E5258 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailDownloadingButton;

  return v0;
}

uint64_t sub_100335FC8()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000020;
  v4._object = 0x80000001005B63E0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.containerDetailDownloadedButton = v1;
  *algn_1006FD188 = v2;
  qword_1006FD190 = 0xD000000000000020;
  unk_1006FD198 = 0x80000001005B63E0;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailDownloadedButton.unsafeMutableAddressor()
{
  if (qword_1006E5260 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailDownloadedButton;
}

uint64_t static AccessibilityIdentifier.containerDetailDownloadedButton.getter()
{
  if (qword_1006E5260 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailDownloadedButton;

  return v0;
}

uint64_t sub_100336174()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000021;
  v4._object = 0x80000001005B63B0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.albumDetailOpenInClassicalButton = v1;
  *algn_1006FD1A8 = v2;
  qword_1006FD1B0 = 0xD000000000000021;
  unk_1006FD1B8 = 0x80000001005B63B0;
  return result;
}

uint64_t *AccessibilityIdentifier.albumDetailOpenInClassicalButton.unsafeMutableAddressor()
{
  if (qword_1006E5268 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.albumDetailOpenInClassicalButton;
}

uint64_t static AccessibilityIdentifier.albumDetailOpenInClassicalButton.getter()
{
  if (qword_1006E5268 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.albumDetailOpenInClassicalButton;

  return v0;
}

uint64_t sub_100336320()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000023;
  v4._object = 0x80000001005B6380;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playlistDetailCollaborationControl = v1;
  *algn_1006FD1C8 = v2;
  qword_1006FD1D0 = 0xD000000000000023;
  unk_1006FD1D8 = 0x80000001005B6380;
  return result;
}

uint64_t *AccessibilityIdentifier.playlistDetailCollaborationControl.unsafeMutableAddressor()
{
  if (qword_1006E5270 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistDetailCollaborationControl;
}

uint64_t static AccessibilityIdentifier.playlistDetailCollaborationControl.getter()
{
  if (qword_1006E5270 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistDetailCollaborationControl;

  return v0;
}

uint64_t sub_1003364CC()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x42746E756F636361;
  v4._object = 0xED00006E6F747475;
  sub_100572A98(v4);

  static AccessibilityIdentifier.accountButton = v1;
  *algn_1006FD1E8 = v2;
  strcpy(&qword_1006FD1F0, "accountButton");
  unk_1006FD1FE = -4864;
  return result;
}

uint64_t *AccessibilityIdentifier.accountButton.unsafeMutableAddressor()
{
  if (qword_1006E5278 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.accountButton;
}

uint64_t static AccessibilityIdentifier.accountButton.getter()
{
  if (qword_1006E5278 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.accountButton;

  return v0;
}

uint64_t sub_10033667C()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000010;
  v4._object = 0x80000001005B6360;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryListCell = v1;
  *algn_1006FD208 = v2;
  qword_1006FD210 = 0xD000000000000010;
  unk_1006FD218 = 0x80000001005B6360;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryListCell.unsafeMutableAddressor()
{
  if (qword_1006E5280 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryListCell;
}

uint64_t static AccessibilityIdentifier.libraryListCell.getter()
{
  if (qword_1006E5280 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryListCell;

  return v0;
}

uint64_t sub_100336828()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000018;
  v4._object = 0x80000001005B6340;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryListCellArtwork = v1;
  *algn_1006FD228 = v2;
  qword_1006FD230 = 0xD000000000000018;
  unk_1006FD238 = 0x80000001005B6340;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryListCellArtwork.unsafeMutableAddressor()
{
  if (qword_1006E5288 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryListCellArtwork;
}

uint64_t static AccessibilityIdentifier.libraryListCellArtwork.getter()
{
  if (qword_1006E5288 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryListCellArtwork;

  return v0;
}

uint64_t sub_1003369D4()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000016;
  v4._object = 0x80000001005B6320;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryListCellTitle = v1;
  *algn_1006FD248 = v2;
  qword_1006FD250 = 0xD000000000000016;
  unk_1006FD258 = 0x80000001005B6320;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryListCellTitle.unsafeMutableAddressor()
{
  if (qword_1006E5290 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryListCellTitle;
}

uint64_t static AccessibilityIdentifier.libraryListCellTitle.getter()
{
  if (qword_1006E5290 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryListCellTitle;

  return v0;
}

uint64_t sub_100336B80()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000019;
  v4._object = 0x80000001005B6300;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryListCellSubtitle = v1;
  *algn_1006FD268 = v2;
  qword_1006FD270 = 0xD000000000000019;
  unk_1006FD278 = 0x80000001005B6300;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryListCellSubtitle.unsafeMutableAddressor()
{
  if (qword_1006E5298 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryListCellSubtitle;
}

uint64_t static AccessibilityIdentifier.libraryListCellSubtitle.getter()
{
  if (qword_1006E5298 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryListCellSubtitle;

  return v0;
}

uint64_t sub_100336D2C()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000010;
  v4._object = 0x80000001005B62E0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryGridCell = v1;
  *algn_1006FD288 = v2;
  qword_1006FD290 = 0xD000000000000010;
  unk_1006FD298 = 0x80000001005B62E0;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryGridCell.unsafeMutableAddressor()
{
  if (qword_1006E52A0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryGridCell;
}

uint64_t static AccessibilityIdentifier.libraryGridCell.getter()
{
  if (qword_1006E52A0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryGridCell;

  return v0;
}

uint64_t sub_100336ED8()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000018;
  v4._object = 0x80000001005B62C0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryGridCellArtwork = v1;
  *algn_1006FD2A8 = v2;
  qword_1006FD2B0 = 0xD000000000000018;
  unk_1006FD2B8 = 0x80000001005B62C0;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryGridCellArtwork.unsafeMutableAddressor()
{
  if (qword_1006E52A8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryGridCellArtwork;
}

uint64_t static AccessibilityIdentifier.libraryGridCellArtwork.getter()
{
  if (qword_1006E52A8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryGridCellArtwork;

  return v0;
}

uint64_t sub_100337084()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000016;
  v4._object = 0x80000001005B62A0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryGridCellTitle = v1;
  *algn_1006FD2C8 = v2;
  qword_1006FD2D0 = 0xD000000000000016;
  unk_1006FD2D8 = 0x80000001005B62A0;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryGridCellTitle.unsafeMutableAddressor()
{
  if (qword_1006E52B0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryGridCellTitle;
}

uint64_t static AccessibilityIdentifier.libraryGridCellTitle.getter()
{
  if (qword_1006E52B0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryGridCellTitle;

  return v0;
}

uint64_t sub_100337230()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000019;
  v4._object = 0x80000001005B6280;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryGridCellSubtitle = v1;
  *algn_1006FD2E8 = v2;
  qword_1006FD2F0 = 0xD000000000000019;
  unk_1006FD2F8 = 0x80000001005B6280;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryGridCellSubtitle.unsafeMutableAddressor()
{
  if (qword_1006E52B8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryGridCellSubtitle;
}

uint64_t static AccessibilityIdentifier.libraryGridCellSubtitle.getter()
{
  if (qword_1006E52B8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryGridCellSubtitle;

  return v0;
}

uint64_t sub_1003373DC()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000016;
  v4._object = 0x80000001005B6260;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playlistButton = v1;
  *algn_1006FD308 = v2;
  qword_1006FD310 = 0xD000000000000016;
  unk_1006FD318 = 0x80000001005B6260;
  return result;
}

uint64_t *AccessibilityIdentifier.playlistButton.unsafeMutableAddressor()
{
  if (qword_1006E52C0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistButton;
}

uint64_t static AccessibilityIdentifier.playlistButton.getter()
{
  if (qword_1006E52C0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistButton;

  return v0;
}

uint64_t sub_100337588()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000001CLL;
  v4._object = 0x80000001005B6240;
  sub_100572A98(v4);

  static AccessibilityIdentifier.contextualMenuButton = v1;
  *algn_1006FD328 = v2;
  qword_1006FD330 = 0xD00000000000001CLL;
  unk_1006FD338 = 0x80000001005B6240;
  return result;
}

uint64_t *AccessibilityIdentifier.contextualMenuButton.unsafeMutableAddressor()
{
  if (qword_1006E52C8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.contextualMenuButton;
}

uint64_t static AccessibilityIdentifier.contextualMenuButton.getter()
{
  if (qword_1006E52C8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.contextualMenuButton;

  return v0;
}

uint64_t sub_100337734()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000001BLL;
  v4._object = 0x80000001005B6220;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryFilterOptionsButton = v1;
  *algn_1006FD348 = v2;
  qword_1006FD350 = 0xD00000000000001BLL;
  unk_1006FD358 = 0x80000001005B6220;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryFilterOptionsButton.unsafeMutableAddressor()
{
  if (qword_1006E52D0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryFilterOptionsButton;
}

uint64_t static AccessibilityIdentifier.libraryFilterOptionsButton.getter()
{
  if (qword_1006E52D0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryFilterOptionsButton;

  return v0;
}

uint64_t sub_1003378E0()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000019;
  v4._object = 0x80000001005B6200;
  sub_100572A98(v4);

  static AccessibilityIdentifier.librarySortOptionsButton = v1;
  *algn_1006FD368 = v2;
  qword_1006FD370 = 0xD000000000000019;
  unk_1006FD378 = 0x80000001005B6200;
  return result;
}

uint64_t *AccessibilityIdentifier.librarySortOptionsButton.unsafeMutableAddressor()
{
  if (qword_1006E52D8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.librarySortOptionsButton;
}

uint64_t static AccessibilityIdentifier.librarySortOptionsButton.getter()
{
  if (qword_1006E52D8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.librarySortOptionsButton;

  return v0;
}

uint64_t sub_100337A8C()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000011;
  v4._object = 0x80000001005B61E0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryTrackCell = v1;
  *algn_1006FD388 = v2;
  qword_1006FD390 = 0xD000000000000011;
  unk_1006FD398 = 0x80000001005B61E0;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryTrackCell.unsafeMutableAddressor()
{
  if (qword_1006E52E0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTrackCell;
}

uint64_t static AccessibilityIdentifier.libraryTrackCell.getter()
{
  if (qword_1006E52E0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTrackCell;

  return v0;
}

uint64_t sub_100337C38()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000019;
  v4._object = 0x80000001005B61C0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryTrackCellArtwork = v1;
  *algn_1006FD3A8 = v2;
  qword_1006FD3B0 = 0xD000000000000019;
  unk_1006FD3B8 = 0x80000001005B61C0;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryTrackCellArtwork.unsafeMutableAddressor()
{
  if (qword_1006E52E8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTrackCellArtwork;
}

uint64_t static AccessibilityIdentifier.libraryTrackCellArtwork.getter()
{
  if (qword_1006E52E8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTrackCellArtwork;

  return v0;
}

uint64_t sub_100337DE4()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000017;
  v4._object = 0x80000001005B61A0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryTrackCellTitle = v1;
  *algn_1006FD3C8 = v2;
  qword_1006FD3D0 = 0xD000000000000017;
  unk_1006FD3D8 = 0x80000001005B61A0;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryTrackCellTitle.unsafeMutableAddressor()
{
  if (qword_1006E52F0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTrackCellTitle;
}

uint64_t static AccessibilityIdentifier.libraryTrackCellTitle.getter()
{
  if (qword_1006E52F0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTrackCellTitle;

  return v0;
}

uint64_t sub_100337F90()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000001ALL;
  v4._object = 0x80000001005B6180;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryTrackCellSubtitle = v1;
  *algn_1006FD3E8 = v2;
  qword_1006FD3F0 = 0xD00000000000001ALL;
  unk_1006FD3F8 = 0x80000001005B6180;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryTrackCellSubtitle.unsafeMutableAddressor()
{
  if (qword_1006E52F8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTrackCellSubtitle;
}

uint64_t static AccessibilityIdentifier.libraryTrackCellSubtitle.getter()
{
  if (qword_1006E52F8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTrackCellSubtitle;

  return v0;
}

uint64_t sub_10033813C()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000001CLL;
  v4._object = 0x80000001005B6160;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryTrackCellDetailText = v1;
  *algn_1006FD408 = v2;
  qword_1006FD410 = 0xD00000000000001CLL;
  unk_1006FD418 = 0x80000001005B6160;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryTrackCellDetailText.unsafeMutableAddressor()
{
  if (qword_1006E5300 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTrackCellDetailText;
}

uint64_t static AccessibilityIdentifier.libraryTrackCellDetailText.getter()
{
  if (qword_1006E5300 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTrackCellDetailText;

  return v0;
}

uint64_t sub_1003382E8()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000001ALL;
  v4._object = 0x80000001005B6140;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryTrackCellDuration = v1;
  *algn_1006FD428 = v2;
  qword_1006FD430 = 0xD00000000000001ALL;
  unk_1006FD438 = 0x80000001005B6140;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryTrackCellDuration.unsafeMutableAddressor()
{
  if (qword_1006E5308 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTrackCellDuration;
}

uint64_t static AccessibilityIdentifier.libraryTrackCellDuration.getter()
{
  if (qword_1006E5308 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTrackCellDuration;

  return v0;
}

uint64_t sub_100338494()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000010;
  v4._object = 0x80000001005B6120;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryTextCell = v1;
  *algn_1006FD448 = v2;
  qword_1006FD450 = 0xD000000000000010;
  unk_1006FD458 = 0x80000001005B6120;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryTextCell.unsafeMutableAddressor()
{
  if (qword_1006E5310 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTextCell;
}

uint64_t static AccessibilityIdentifier.libraryTextCell.getter()
{
  if (qword_1006E5310 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTextCell;

  return v0;
}

uint64_t sub_100338640()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000015;
  v4._object = 0x80000001005B6100;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryFavoriteBadge = v1;
  *algn_1006FD468 = v2;
  qword_1006FD470 = 0xD000000000000015;
  unk_1006FD478 = 0x80000001005B6100;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryFavoriteBadge.unsafeMutableAddressor()
{
  if (qword_1006E5318 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryFavoriteBadge;
}

uint64_t static AccessibilityIdentifier.libraryFavoriteBadge.getter()
{
  if (qword_1006E5318 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryFavoriteBadge;

  return v0;
}

uint64_t sub_1003387EC()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000010;
  v4._object = 0x80000001005B60E0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryMenuView = v1;
  *algn_1006FD488 = v2;
  qword_1006FD490 = 0xD000000000000010;
  unk_1006FD498 = 0x80000001005B60E0;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryMenuView.unsafeMutableAddressor()
{
  if (qword_1006E5320 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryMenuView;
}

uint64_t static AccessibilityIdentifier.libraryMenuView.getter()
{
  if (qword_1006E5320 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryMenuView;

  return v0;
}

uint64_t sub_100338998()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000013;
  v4._object = 0x80000001005B60C0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryContentView = v1;
  *algn_1006FD4A8 = v2;
  qword_1006FD4B0 = 0xD000000000000013;
  unk_1006FD4B8 = 0x80000001005B60C0;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryContentView.unsafeMutableAddressor()
{
  if (qword_1006E5328 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryContentView;
}

uint64_t static AccessibilityIdentifier.libraryContentView.getter()
{
  if (qword_1006E5328 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryContentView;

  return v0;
}

uint64_t sub_100338B44()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x2E7972617262694CLL;
  v4._object = 0xEC000000736E6950;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryPins = v1;
  *algn_1006FD4C8 = v2;
  strcpy(&qword_1006FD4D0, "Library.Pins");
  unk_1006FD4DD = 0;
  unk_1006FD4DE = -5120;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryPins.unsafeMutableAddressor()
{
  if (qword_1006E5330 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryPins;
}

uint64_t static AccessibilityIdentifier.libraryPins.getter()
{
  if (qword_1006E5330 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryPins;

  return v0;
}

uint64_t sub_100338CF0()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x567972617262694CLL;
  v4._object = 0xEB00000000776569;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryView = v1;
  *algn_1006FD4E8 = v2;
  qword_1006FD4F0 = 0x567972617262694CLL;
  unk_1006FD4F8 = 0xEB00000000776569;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryView.unsafeMutableAddressor()
{
  if (qword_1006E5338 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryView;
}

uint64_t static AccessibilityIdentifier.libraryView.getter()
{
  if (qword_1006E5338 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryView;

  return v0;
}

uint64_t sub_100338E9C()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000019;
  v4._object = 0x80000001005B6C20;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryRecentlyAddedView = v1;
  *algn_1006FD508 = v2;
  qword_1006FD510 = 0xD000000000000019;
  unk_1006FD518 = 0x80000001005B6C20;
  return result;
}

uint64_t static AccessibilityIdentifier.libraryRecentlyAddedView.getter()
{
  if (qword_1006E5340 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryRecentlyAddedView;

  return v0;
}

uint64_t sub_100338FF8()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000017;
  v4._object = 0x80000001005B6BA0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryArtistsListView = v1;
  *algn_1006FD528 = v2;
  qword_1006FD530 = 0xD000000000000017;
  unk_1006FD538 = 0x80000001005B6BA0;
  return result;
}

uint64_t static AccessibilityIdentifier.libraryArtistsListView.getter()
{
  if (qword_1006E5348 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryArtistsListView;

  return v0;
}

uint64_t sub_100339154()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000020;
  v4._object = 0x80000001005B6090;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryArtistsDetailView = v1;
  *algn_1006FD548 = v2;
  qword_1006FD550 = 0xD000000000000020;
  unk_1006FD558 = 0x80000001005B6090;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryArtistsDetailView.unsafeMutableAddressor()
{
  if (qword_1006E5350 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryArtistsDetailView;
}

uint64_t static AccessibilityIdentifier.libraryArtistsDetailView.getter()
{
  if (qword_1006E5350 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryArtistsDetailView;

  return v0;
}

uint64_t sub_100339300()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000012;
  v4._object = 0x80000001005B6B80;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryAlbumsView = v1;
  *algn_1006FD568 = v2;
  qword_1006FD570 = 0xD000000000000012;
  unk_1006FD578 = 0x80000001005B6B80;
  return result;
}

uint64_t static AccessibilityIdentifier.libraryAlbumsView.getter()
{
  if (qword_1006E5358 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryAlbumsView;

  return v0;
}

uint64_t sub_10033945C()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000015;
  v4._object = 0x80000001005B6CA0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryComposersView = v1;
  *algn_1006FD588 = v2;
  qword_1006FD590 = 0xD000000000000015;
  unk_1006FD598 = 0x80000001005B6CA0;
  return result;
}

uint64_t static AccessibilityIdentifier.libraryComposersView.getter()
{
  if (qword_1006E5360 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryComposersView;

  return v0;
}

uint64_t sub_1003395B8()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000018;
  v4._object = 0x80000001005B6C80;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryCompilationsView = v1;
  *algn_1006FD5A8 = v2;
  qword_1006FD5B0 = 0xD000000000000018;
  unk_1006FD5B8 = 0x80000001005B6C80;
  return result;
}

uint64_t static AccessibilityIdentifier.libraryCompilationsView.getter()
{
  if (qword_1006E5368 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryCompilationsView;

  return v0;
}

uint64_t sub_100339714()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000016;
  v4._object = 0x80000001005B6CE0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryDownloadedView = v1;
  *algn_1006FD5C8 = v2;
  qword_1006FD5D0 = 0xD000000000000016;
  unk_1006FD5D8 = 0x80000001005B6CE0;
  return result;
}

uint64_t static AccessibilityIdentifier.libraryDownloadedView.getter()
{
  if (qword_1006E5370 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryDownloadedView;

  return v0;
}

uint64_t sub_100339870()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000017;
  v4._object = 0x80000001005B6D00;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryDownloadingView = v1;
  *algn_1006FD5E8 = v2;
  qword_1006FD5F0 = 0xD000000000000017;
  unk_1006FD5F8 = 0x80000001005B6D00;
  return result;
}

uint64_t static AccessibilityIdentifier.libraryDownloadingView.getter()
{
  if (qword_1006E5378 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryDownloadingView;

  return v0;
}

uint64_t sub_1003399CC()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000012;
  v4._object = 0x80000001005B6C00;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryGenresView = v1;
  *algn_1006FD608 = v2;
  qword_1006FD610 = 0xD000000000000012;
  unk_1006FD618 = 0x80000001005B6C00;
  return result;
}

uint64_t static AccessibilityIdentifier.libraryGenresView.getter()
{
  if (qword_1006E5380 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryGenresView;

  return v0;
}

uint64_t sub_100339B28()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000016;
  v4._object = 0x80000001005B6C40;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryMadeForYouView = v1;
  *algn_1006FD628 = v2;
  qword_1006FD630 = 0xD000000000000016;
  unk_1006FD638 = 0x80000001005B6C40;
  return result;
}

uint64_t static AccessibilityIdentifier.libraryMadeForYouView.getter()
{
  if (qword_1006E5388 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryMadeForYouView;

  return v0;
}

uint64_t sub_100339C84()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000017;
  v4._object = 0x80000001005B6C60;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryMusicVideosView = v1;
  *algn_1006FD648 = v2;
  qword_1006FD650 = 0xD000000000000017;
  unk_1006FD658 = 0x80000001005B6C60;
  return result;
}

uint64_t static AccessibilityIdentifier.libraryMusicVideosView.getter()
{
  if (qword_1006E5390 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryMusicVideosView;

  return v0;
}

uint64_t sub_100339DE0()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000015;
  v4._object = 0x80000001005B6BE0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryPlaylistsView = v1;
  *algn_1006FD668 = v2;
  qword_1006FD670 = 0xD000000000000015;
  unk_1006FD678 = 0x80000001005B6BE0;
  return result;
}

uint64_t static AccessibilityIdentifier.libraryPlaylistsView.getter()
{
  if (qword_1006E5398 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryPlaylistsView;

  return v0;
}

uint64_t sub_100339F3C()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000011;
  v4._object = 0x80000001005B6BC0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.librarySongsView = v1;
  *algn_1006FD688 = v2;
  qword_1006FD690 = 0xD000000000000011;
  unk_1006FD698 = 0x80000001005B6BC0;
  return result;
}

uint64_t static AccessibilityIdentifier.librarySongsView.getter()
{
  if (qword_1006E53A0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.librarySongsView;

  return v0;
}

uint64_t sub_10033A098()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000017;
  v4._object = 0x80000001005B6CC0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.libraryTVAndMoviesView = v1;
  *algn_1006FD6A8 = v2;
  qword_1006FD6B0 = 0xD000000000000017;
  unk_1006FD6B8 = 0x80000001005B6CC0;
  return result;
}

uint64_t static AccessibilityIdentifier.libraryTVAndMoviesView.getter()
{
  if (qword_1006E53A8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTVAndMoviesView;

  return v0;
}

uint64_t sub_10033A1F4()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000015;
  v4._object = 0x80000001005B6070;
  sub_100572A98(v4);

  static AccessibilityIdentifier.listenNowContentView = v1;
  *algn_1006FD6C8 = v2;
  qword_1006FD6D0 = 0xD000000000000015;
  unk_1006FD6D8 = 0x80000001005B6070;
  return result;
}

uint64_t *AccessibilityIdentifier.listenNowContentView.unsafeMutableAddressor()
{
  if (qword_1006E53B0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.listenNowContentView;
}

uint64_t static AccessibilityIdentifier.listenNowContentView.getter()
{
  if (qword_1006E53B0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.listenNowContentView;

  return v0;
}

uint64_t sub_10033A3A0()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000012;
  v4._object = 0x80000001005B6050;
  sub_100572A98(v4);

  static AccessibilityIdentifier.browseContentView = v1;
  *algn_1006FD6E8 = v2;
  qword_1006FD6F0 = 0xD000000000000012;
  unk_1006FD6F8 = 0x80000001005B6050;
  return result;
}

uint64_t *AccessibilityIdentifier.browseContentView.unsafeMutableAddressor()
{
  if (qword_1006E53B8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.browseContentView;
}

uint64_t static AccessibilityIdentifier.browseContentView.getter()
{
  if (qword_1006E53B8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.browseContentView;

  return v0;
}

uint64_t sub_10033A54C()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000011;
  v4._object = 0x80000001005B6030;
  sub_100572A98(v4);

  static AccessibilityIdentifier.radioContentView = v1;
  *algn_1006FD708 = v2;
  qword_1006FD710 = 0xD000000000000011;
  unk_1006FD718 = 0x80000001005B6030;
  return result;
}

uint64_t *AccessibilityIdentifier.radioContentView.unsafeMutableAddressor()
{
  if (qword_1006E53C0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.radioContentView;
}

uint64_t static AccessibilityIdentifier.radioContentView.getter()
{
  if (qword_1006E53C0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.radioContentView;

  return v0;
}

uint64_t sub_10033A6F8()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000012;
  v4._object = 0x80000001005B6010;
  sub_100572A98(v4);

  static AccessibilityIdentifier.searchContentView = v1;
  *algn_1006FD728 = v2;
  qword_1006FD730 = 0xD000000000000012;
  unk_1006FD738 = 0x80000001005B6010;
  return result;
}

uint64_t *AccessibilityIdentifier.searchContentView.unsafeMutableAddressor()
{
  if (qword_1006E53C8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.searchContentView;
}

uint64_t static AccessibilityIdentifier.searchContentView.getter()
{
  if (qword_1006E53C8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.searchContentView;

  return v0;
}

uint64_t sub_10033A8A4()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000012;
  v4._object = 0x80000001005B5FF0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.videosContentView = v1;
  *algn_1006FD748 = v2;
  qword_1006FD750 = 0xD000000000000012;
  unk_1006FD758 = 0x80000001005B5FF0;
  return result;
}

uint64_t *AccessibilityIdentifier.videosContentView.unsafeMutableAddressor()
{
  if (qword_1006E53D0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.videosContentView;
}

uint64_t static AccessibilityIdentifier.videosContentView.getter()
{
  if (qword_1006E53D0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.videosContentView;

  return v0;
}

uint64_t sub_10033AA50()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x6979616C50776F4ELL;
  v4._object = 0xEE0077656956676ELL;
  sub_100572A98(v4);

  static AccessibilityIdentifier.nowPlayingView = v1;
  *algn_1006FD768 = v2;
  strcpy(&qword_1006FD770, "NowPlayingView");
  unk_1006FD77F = -18;
  return result;
}

uint64_t *AccessibilityIdentifier.nowPlayingView.unsafeMutableAddressor()
{
  if (qword_1006E53D8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingView;
}

uint64_t static AccessibilityIdentifier.nowPlayingView.getter()
{
  if (qword_1006E53D8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingView;

  return v0;
}

uint64_t sub_10033AC00()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000010;
  v4._object = 0x80000001005B5FD0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.bottomPlayerView = v1;
  *algn_1006FD788 = v2;
  qword_1006FD790 = 0xD000000000000010;
  unk_1006FD798 = 0x80000001005B5FD0;
  return result;
}

uint64_t *AccessibilityIdentifier.bottomPlayerView.unsafeMutableAddressor()
{
  if (qword_1006E53E0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.bottomPlayerView;
}

uint64_t static AccessibilityIdentifier.bottomPlayerView.getter()
{
  if (qword_1006E53E0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.bottomPlayerView;

  return v0;
}

uint64_t sub_10033ADAC()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000018;
  v4._object = 0x80000001005B5FB0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.nowPlayingShuffleButton = v1;
  *algn_1006FD7A8 = v2;
  qword_1006FD7B0 = 0xD000000000000018;
  unk_1006FD7B8 = 0x80000001005B5FB0;
  return result;
}

uint64_t *AccessibilityIdentifier.nowPlayingShuffleButton.unsafeMutableAddressor()
{
  if (qword_1006E53E8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingShuffleButton;
}

uint64_t static AccessibilityIdentifier.nowPlayingShuffleButton.getter()
{
  if (qword_1006E53E8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingShuffleButton;

  return v0;
}

uint64_t sub_10033AF58()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000017;
  v4._object = 0x80000001005B5F90;
  sub_100572A98(v4);

  static AccessibilityIdentifier.nowPlayingRepeatButton = v1;
  *algn_1006FD7C8 = v2;
  qword_1006FD7D0 = 0xD000000000000017;
  unk_1006FD7D8 = 0x80000001005B5F90;
  return result;
}

uint64_t *AccessibilityIdentifier.nowPlayingRepeatButton.unsafeMutableAddressor()
{
  if (qword_1006E53F0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingRepeatButton;
}

uint64_t static AccessibilityIdentifier.nowPlayingRepeatButton.getter()
{
  if (qword_1006E53F0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingRepeatButton;

  return v0;
}

uint64_t sub_10033B104()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000019;
  v4._object = 0x80000001005B5F70;
  sub_100572A98(v4);

  static AccessibilityIdentifier.nowPlayingAutoPlayButton = v1;
  *algn_1006FD7E8 = v2;
  qword_1006FD7F0 = 0xD000000000000019;
  unk_1006FD7F8 = 0x80000001005B5F70;
  return result;
}

uint64_t *AccessibilityIdentifier.nowPlayingAutoPlayButton.unsafeMutableAddressor()
{
  if (qword_1006E53F8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingAutoPlayButton;
}

uint64_t static AccessibilityIdentifier.nowPlayingAutoPlayButton.getter()
{
  if (qword_1006E53F8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingAutoPlayButton;

  return v0;
}

uint64_t sub_10033B2B0()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000019;
  v4._object = 0x80000001005B5F50;
  sub_100572A98(v4);

  static AccessibilityIdentifier.nowPlayingFavoriteButton = v1;
  *algn_1006FD808 = v2;
  qword_1006FD810 = 0xD000000000000019;
  unk_1006FD818 = 0x80000001005B5F50;
  return result;
}

uint64_t *AccessibilityIdentifier.nowPlayingFavoriteButton.unsafeMutableAddressor()
{
  if (qword_1006E5400 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingFavoriteButton;
}

uint64_t static AccessibilityIdentifier.nowPlayingFavoriteButton.getter()
{
  if (qword_1006E5400 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingFavoriteButton;

  return v0;
}

uint64_t sub_10033B45C()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000024;
  v4._object = 0x80000001005B5F20;
  sub_100572A98(v4);

  static AccessibilityIdentifier.nowPlayingAudioBadgeLosslessButton = v1;
  *algn_1006FD828 = v2;
  qword_1006FD830 = 0xD000000000000024;
  unk_1006FD838 = 0x80000001005B5F20;
  return result;
}

uint64_t *AccessibilityIdentifier.nowPlayingAudioBadgeLosslessButton.unsafeMutableAddressor()
{
  if (qword_1006E5408 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingAudioBadgeLosslessButton;
}

uint64_t static AccessibilityIdentifier.nowPlayingAudioBadgeLosslessButton.getter()
{
  if (qword_1006E5408 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingAudioBadgeLosslessButton;

  return v0;
}

uint64_t sub_10033B608()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000021;
  v4._object = 0x80000001005B5EF0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.nowPlayingAudioBadgeDolbyButton = v1;
  *algn_1006FD848 = v2;
  qword_1006FD850 = 0xD000000000000021;
  unk_1006FD858 = 0x80000001005B5EF0;
  return result;
}

uint64_t *AccessibilityIdentifier.nowPlayingAudioBadgeDolbyButton.unsafeMutableAddressor()
{
  if (qword_1006E5410 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingAudioBadgeDolbyButton;
}

uint64_t static AccessibilityIdentifier.nowPlayingAudioBadgeDolbyButton.getter()
{
  if (qword_1006E5410 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingAudioBadgeDolbyButton;

  return v0;
}

uint64_t sub_10033B7B4()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000023;
  v4._object = 0x80000001005B5EC0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.nowPlayingAudioBadgeSpatialButton = v1;
  *algn_1006FD868 = v2;
  qword_1006FD870 = 0xD000000000000023;
  unk_1006FD878 = 0x80000001005B5EC0;
  return result;
}

uint64_t *AccessibilityIdentifier.nowPlayingAudioBadgeSpatialButton.unsafeMutableAddressor()
{
  if (qword_1006E5418 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.nowPlayingAudioBadgeSpatialButton;
}

uint64_t static AccessibilityIdentifier.nowPlayingAudioBadgeSpatialButton.getter()
{
  if (qword_1006E5418 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.nowPlayingAudioBadgeSpatialButton;

  return v0;
}

uint64_t sub_10033B960()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x747475426574754DLL;
  v4._object = 0xEA00000000006E6FLL;
  sub_100572A98(v4);

  static AccessibilityIdentifier.muteButton = v1;
  *algn_1006FD888 = v2;
  qword_1006FD890 = 0x747475426574754DLL;
  unk_1006FD898 = 0xEA00000000006E6FLL;
  return result;
}

uint64_t *AccessibilityIdentifier.muteButton.unsafeMutableAddressor()
{
  if (qword_1006E5420 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.muteButton;
}

uint64_t static AccessibilityIdentifier.muteButton.getter()
{
  if (qword_1006E5420 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.muteButton;

  return v0;
}

uint64_t sub_10033BB0C()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x6C53656D756C6F56;
  v4._object = 0xEC00000072656469;
  sub_100572A98(v4);

  static AccessibilityIdentifier.volumeSlider = v1;
  *algn_1006FD8A8 = v2;
  strcpy(&qword_1006FD8B0, "VolumeSlider");
  unk_1006FD8BD = 0;
  unk_1006FD8BE = -5120;
  return result;
}

uint64_t *AccessibilityIdentifier.volumeSlider.unsafeMutableAddressor()
{
  if (qword_1006E5428 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.volumeSlider;
}

uint64_t static AccessibilityIdentifier.volumeSlider.getter()
{
  if (qword_1006E5428 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.volumeSlider;

  return v0;
}

uint64_t sub_10033BCB8()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x6B63616279616C50;
  v4._object = 0xEE00726564696C53;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playbackSlider = v1;
  *algn_1006FD8C8 = v2;
  strcpy(&qword_1006FD8D0, "PlaybackSlider");
  unk_1006FD8DF = -18;
  return result;
}

uint64_t *AccessibilityIdentifier.playbackSlider.unsafeMutableAddressor()
{
  if (qword_1006E5430 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playbackSlider;
}

uint64_t static AccessibilityIdentifier.playbackSlider.getter()
{
  if (qword_1006E5430 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playbackSlider;

  return v0;
}

uint64_t sub_10033BE68()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000001BLL;
  v4._object = 0x80000001005B5EA0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playerMenuButton = v1;
  *algn_1006FD8E8 = v2;
  qword_1006FD8F0 = 0xD00000000000001BLL;
  unk_1006FD8F8 = 0x80000001005B5EA0;
  return result;
}

uint64_t *AccessibilityIdentifier.playerMenuButton.unsafeMutableAddressor()
{
  if (qword_1006E5438 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playerMenuButton;
}

uint64_t static AccessibilityIdentifier.playerMenuButton.getter()
{
  if (qword_1006E5438 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playerMenuButton;

  return v0;
}

uint64_t sub_10033C014()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x754273636972794CLL;
  v4._object = 0xEC0000006E6F7474;
  sub_100572A98(v4);

  static AccessibilityIdentifier.lyricsButton = v1;
  *algn_1006FD908 = v2;
  strcpy(&qword_1006FD910, "LyricsButton");
  unk_1006FD91D = 0;
  unk_1006FD91E = -5120;
  return result;
}

uint64_t *AccessibilityIdentifier.lyricsButton.unsafeMutableAddressor()
{
  if (qword_1006E5440 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.lyricsButton;
}

uint64_t static AccessibilityIdentifier.lyricsButton.getter()
{
  if (qword_1006E5440 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.lyricsButton;

  return v0;
}

uint64_t sub_10033C1C0()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000013;
  v4._object = 0x80000001005B5E80;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playbackQueueButton = v1;
  *algn_1006FD928 = v2;
  qword_1006FD930 = 0xD000000000000013;
  unk_1006FD938 = 0x80000001005B5E80;
  return result;
}

uint64_t *AccessibilityIdentifier.playbackQueueButton.unsafeMutableAddressor()
{
  if (qword_1006E5448 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playbackQueueButton;
}

uint64_t static AccessibilityIdentifier.playbackQueueButton.getter()
{
  if (qword_1006E5448 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playbackQueueButton;

  return v0;
}

uint64_t sub_10033C36C()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000001BLL;
  v4._object = 0x80000001005B5E60;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playlistSuggestedSongsView = v1;
  *algn_1006FD948 = v2;
  qword_1006FD950 = 0xD00000000000001BLL;
  unk_1006FD958 = 0x80000001005B5E60;
  return result;
}

uint64_t *AccessibilityIdentifier.playlistSuggestedSongsView.unsafeMutableAddressor()
{
  if (qword_1006E5450 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistSuggestedSongsView;
}

uint64_t static AccessibilityIdentifier.playlistSuggestedSongsView.getter()
{
  if (qword_1006E5450 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistSuggestedSongsView;

  return v0;
}

uint64_t sub_10033C518()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000025;
  v4._object = 0x80000001005B5E30;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playlistSuggestedSongsRefreshButton = v1;
  *algn_1006FD968 = v2;
  qword_1006FD970 = 0xD000000000000025;
  unk_1006FD978 = 0x80000001005B5E30;
  return result;
}

uint64_t *AccessibilityIdentifier.playlistSuggestedSongsRefreshButton.unsafeMutableAddressor()
{
  if (qword_1006E5458 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistSuggestedSongsRefreshButton;
}

uint64_t static AccessibilityIdentifier.playlistSuggestedSongsRefreshButton.getter()
{
  if (qword_1006E5458 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistSuggestedSongsRefreshButton;

  return v0;
}

uint64_t sub_10033C6C4()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000001CLL;
  v4._object = 0x80000001005B5E10;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playlistSuggestedSongsCell = v1;
  *algn_1006FD988 = v2;
  qword_1006FD990 = 0xD00000000000001CLL;
  unk_1006FD998 = 0x80000001005B5E10;
  return result;
}

uint64_t *AccessibilityIdentifier.playlistSuggestedSongsCell.unsafeMutableAddressor()
{
  if (qword_1006E5460 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistSuggestedSongsCell;
}

uint64_t static AccessibilityIdentifier.playlistSuggestedSongsCell.getter()
{
  if (qword_1006E5460 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistSuggestedSongsCell;

  return v0;
}

uint64_t sub_10033C870()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000024;
  v4._object = 0x80000001005B5DE0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playlistSuggestedSongsCellArtwork = v1;
  *algn_1006FD9A8 = v2;
  qword_1006FD9B0 = 0xD000000000000024;
  unk_1006FD9B8 = 0x80000001005B5DE0;
  return result;
}

uint64_t *AccessibilityIdentifier.playlistSuggestedSongsCellArtwork.unsafeMutableAddressor()
{
  if (qword_1006E5468 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistSuggestedSongsCellArtwork;
}

uint64_t static AccessibilityIdentifier.playlistSuggestedSongsCellArtwork.getter()
{
  if (qword_1006E5468 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistSuggestedSongsCellArtwork;

  return v0;
}

uint64_t sub_10033CA1C()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001005B5DB0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playlistSuggestedSongsCellTitle = v1;
  *algn_1006FD9C8 = v2;
  qword_1006FD9D0 = 0xD000000000000022;
  unk_1006FD9D8 = 0x80000001005B5DB0;
  return result;
}

uint64_t *AccessibilityIdentifier.playlistSuggestedSongsCellTitle.unsafeMutableAddressor()
{
  if (qword_1006E5470 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistSuggestedSongsCellTitle;
}

uint64_t static AccessibilityIdentifier.playlistSuggestedSongsCellTitle.getter()
{
  if (qword_1006E5470 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistSuggestedSongsCellTitle;

  return v0;
}

uint64_t sub_10033CBC8()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000027;
  v4._object = 0x80000001005B5D80;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playlistSuggestedSongsCellArtistName = v1;
  *algn_1006FD9E8 = v2;
  qword_1006FD9F0 = 0xD000000000000027;
  unk_1006FD9F8 = 0x80000001005B5D80;
  return result;
}

uint64_t *AccessibilityIdentifier.playlistSuggestedSongsCellArtistName.unsafeMutableAddressor()
{
  if (qword_1006E5478 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistSuggestedSongsCellArtistName;
}

uint64_t static AccessibilityIdentifier.playlistSuggestedSongsCellArtistName.getter()
{
  if (qword_1006E5478 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistSuggestedSongsCellArtistName;

  return v0;
}

uint64_t sub_10033CD74()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000025;
  v4._object = 0x80000001005B5D50;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playlistSuggestedSongsCellDuration = v1;
  *algn_1006FDA08 = v2;
  qword_1006FDA10 = 0xD000000000000025;
  unk_1006FDA18 = 0x80000001005B5D50;
  return result;
}

uint64_t *AccessibilityIdentifier.playlistSuggestedSongsCellDuration.unsafeMutableAddressor()
{
  if (qword_1006E5480 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistSuggestedSongsCellDuration;
}

uint64_t static AccessibilityIdentifier.playlistSuggestedSongsCellDuration.getter()
{
  if (qword_1006E5480 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistSuggestedSongsCellDuration;

  return v0;
}

uint64_t sub_10033CF20()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000026;
  v4._object = 0x80000001005B5D20;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playlistSuggestedSongsCellAddButton = v1;
  *algn_1006FDA28 = v2;
  qword_1006FDA30 = 0xD000000000000026;
  unk_1006FDA38 = 0x80000001005B5D20;
  return result;
}

uint64_t *AccessibilityIdentifier.playlistSuggestedSongsCellAddButton.unsafeMutableAddressor()
{
  if (qword_1006E5488 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistSuggestedSongsCellAddButton;
}

uint64_t static AccessibilityIdentifier.playlistSuggestedSongsCellAddButton.getter()
{
  if (qword_1006E5488 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistSuggestedSongsCellAddButton;

  return v0;
}

uint64_t sub_10033D0CC()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000015;
  v4._object = 0x80000001005B5D00;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playlistAddMusicCell = v1;
  *algn_1006FDA48 = v2;
  qword_1006FDA50 = 0xD000000000000015;
  unk_1006FDA58 = 0x80000001005B5D00;
  return result;
}

uint64_t *AccessibilityIdentifier.playlistAddMusicCell.unsafeMutableAddressor()
{
  if (qword_1006E5490 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistAddMusicCell;
}

uint64_t static AccessibilityIdentifier.playlistAddMusicCell.getter()
{
  if (qword_1006E5490 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistAddMusicCell;

  return v0;
}

uint64_t sub_10033D278()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x462E747369747241;
  v4._object = 0xEF657469726F7661;
  sub_100572A98(v4);

  static AccessibilityIdentifier.artistFavorite = v1;
  *algn_1006FDA68 = v2;
  qword_1006FDA70 = 0x462E747369747241;
  unk_1006FDA78 = 0xEF657469726F7661;
  return result;
}

uint64_t *AccessibilityIdentifier.artistFavorite.unsafeMutableAddressor()
{
  if (qword_1006E5498 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.artistFavorite;
}

uint64_t static AccessibilityIdentifier.artistFavorite.getter()
{
  if (qword_1006E5498 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.artistFavorite;

  return v0;
}

uint64_t sub_10033D428()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000013;
  v4._object = 0x80000001005B5CE0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.artistUndoFavorite = v1;
  *algn_1006FDA88 = v2;
  qword_1006FDA90 = 0xD000000000000013;
  unk_1006FDA98 = 0x80000001005B5CE0;
  return result;
}

uint64_t *AccessibilityIdentifier.artistUndoFavorite.unsafeMutableAddressor()
{
  if (qword_1006E54A0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.artistUndoFavorite;
}

uint64_t static AccessibilityIdentifier.artistUndoFavorite.getter()
{
  if (qword_1006E54A0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.artistUndoFavorite;

  return v0;
}

uint64_t sub_10033D5D4()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x657469726F766146;
  v4._object = 0xED00006567646142;
  sub_100572A98(v4);

  static AccessibilityIdentifier.favoriteBadge = v1;
  *algn_1006FDAA8 = v2;
  strcpy(&qword_1006FDAB0, "FavoriteBadge");
  unk_1006FDABE = -4864;
  return result;
}

uint64_t *AccessibilityIdentifier.favoriteBadge.unsafeMutableAddressor()
{
  if (qword_1006E54A8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.favoriteBadge;
}

uint64_t static AccessibilityIdentifier.favoriteBadge.getter()
{
  if (qword_1006E54A8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.favoriteBadge;

  return v0;
}

uint64_t sub_10033D784()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000018;
  v4._object = 0x80000001005B5CC0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.privacyTermsAcceptButton = v1;
  *algn_1006FDAC8 = v2;
  qword_1006FDAD0 = 0xD000000000000018;
  unk_1006FDAD8 = 0x80000001005B5CC0;
  return result;
}

uint64_t *AccessibilityIdentifier.privacyTermsAcceptButton.unsafeMutableAddressor()
{
  if (qword_1006E54B0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.privacyTermsAcceptButton;
}

uint64_t static AccessibilityIdentifier.privacyTermsAcceptButton.getter()
{
  if (qword_1006E54B0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.privacyTermsAcceptButton;

  return v0;
}

uint64_t sub_10033D930()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000010;
  v4._object = 0x80000001005B5CA0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.privacyTermsLink = v1;
  *algn_1006FDAE8 = v2;
  qword_1006FDAF0 = 0xD000000000000010;
  unk_1006FDAF8 = 0x80000001005B5CA0;
  return result;
}

uint64_t *AccessibilityIdentifier.privacyTermsLink.unsafeMutableAddressor()
{
  if (qword_1006E54B8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.privacyTermsLink;
}

uint64_t static AccessibilityIdentifier.privacyTermsLink.getter()
{
  if (qword_1006E54B8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.privacyTermsLink;

  return v0;
}

uint64_t sub_10033DADC()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000013;
  v4._object = 0x80000001005B5C80;
  sub_100572A98(v4);

  static AccessibilityIdentifier.privacyWelcomeImage = v1;
  *algn_1006FDB08 = v2;
  qword_1006FDB10 = 0xD000000000000013;
  unk_1006FDB18 = 0x80000001005B5C80;
  return result;
}

uint64_t *AccessibilityIdentifier.privacyWelcomeImage.unsafeMutableAddressor()
{
  if (qword_1006E54C0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.privacyWelcomeImage;
}

uint64_t static AccessibilityIdentifier.privacyWelcomeImage.getter()
{
  if (qword_1006E54C0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.privacyWelcomeImage;

  return v0;
}

uint64_t sub_10033DC88()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000013;
  v4._object = 0x80000001005B5C60;
  sub_100572A98(v4);

  static AccessibilityIdentifier.privacyWelcomeTitle = v1;
  *algn_1006FDB28 = v2;
  qword_1006FDB30 = 0xD000000000000013;
  unk_1006FDB38 = 0x80000001005B5C60;
  return result;
}

uint64_t *AccessibilityIdentifier.privacyWelcomeTitle.unsafeMutableAddressor()
{
  if (qword_1006E54C8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.privacyWelcomeTitle;
}

uint64_t static AccessibilityIdentifier.privacyWelcomeTitle.getter()
{
  if (qword_1006E54C8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.privacyWelcomeTitle;

  return v0;
}

uint64_t sub_10033DE34()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000019;
  v4._object = 0x80000001005B5C40;
  sub_100572A98(v4);

  static AccessibilityIdentifier.privacyWelcomeDescription = v1;
  *algn_1006FDB48 = v2;
  qword_1006FDB50 = 0xD000000000000019;
  unk_1006FDB58 = 0x80000001005B5C40;
  return result;
}

uint64_t *AccessibilityIdentifier.privacyWelcomeDescription.unsafeMutableAddressor()
{
  if (qword_1006E54D0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.privacyWelcomeDescription;
}

uint64_t static AccessibilityIdentifier.privacyWelcomeDescription.getter()
{
  if (qword_1006E54D0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.privacyWelcomeDescription;

  return v0;
}

uint64_t sub_10033DFE0()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x6569566D75626C41;
  v4._object = 0xE900000000000077;
  sub_100572A98(v4);

  static AccessibilityIdentifier.albumView = v1;
  *algn_1006FDB68 = v2;
  qword_1006FDB70 = 0x6569566D75626C41;
  unk_1006FDB78 = 0xE900000000000077;
  return result;
}

uint64_t *AccessibilityIdentifier.albumView.unsafeMutableAddressor()
{
  if (qword_1006E54D8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.albumView;
}

uint64_t static AccessibilityIdentifier.albumView.getter()
{
  if (qword_1006E54D8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.albumView;

  return v0;
}

uint64_t sub_10033E18C()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0x7473696C79616C50;
  v4._object = 0xEC00000077656956;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playlistView = v1;
  *algn_1006FDB88 = v2;
  strcpy(&qword_1006FDB90, "PlaylistView");
  unk_1006FDB9D = 0;
  unk_1006FDB9E = -5120;
  return result;
}

uint64_t *AccessibilityIdentifier.playlistView.unsafeMutableAddressor()
{
  if (qword_1006E54E0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistView;
}

uint64_t static AccessibilityIdentifier.playlistView.getter()
{
  if (qword_1006E54E0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistView;

  return v0;
}

uint64_t sub_10033E338()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000012;
  v4._object = 0x80000001005B5C20;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playlistFolderView = v1;
  *algn_1006FDBA8 = v2;
  qword_1006FDBB0 = 0xD000000000000012;
  unk_1006FDBB8 = 0x80000001005B5C20;
  return result;
}

uint64_t *AccessibilityIdentifier.playlistFolderView.unsafeMutableAddressor()
{
  if (qword_1006E54E8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistFolderView;
}

uint64_t static AccessibilityIdentifier.playlistFolderView.getter()
{
  if (qword_1006E54E8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistFolderView;

  return v0;
}

uint64_t sub_10033E4E4()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v4._object = 0x80000001005B6A00;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1 = v1;
  *algn_1006FDBC8 = v2;
  qword_1006FDBD0 = 0xD00000000000002BLL;
  unk_1006FDBD8 = 0x80000001005B6A00;
  return result;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1.getter()
{
  if (qword_1006E54F0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1;

  return v0;
}

uint64_t sub_10033E640()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v4._object = 0x80000001005B6A30;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2 = v1;
  *algn_1006FDBE8 = v2;
  qword_1006FDBF0 = 0xD00000000000002BLL;
  unk_1006FDBF8 = 0x80000001005B6A30;
  return result;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2.getter()
{
  if (qword_1006E54F8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2;

  return v0;
}

uint64_t sub_10033E79C()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v4._object = 0x80000001005B6A60;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3 = v1;
  *algn_1006FDC08 = v2;
  qword_1006FDC10 = 0xD00000000000002BLL;
  unk_1006FDC18 = 0x80000001005B6A60;
  return result;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3.getter()
{
  if (qword_1006E5500 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3;

  return v0;
}

uint64_t sub_10033E8F8()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v4._object = 0x80000001005B6A90;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4 = v1;
  *algn_1006FDC28 = v2;
  qword_1006FDC30 = 0xD00000000000002BLL;
  unk_1006FDC38 = 0x80000001005B6A90;
  return result;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4.getter()
{
  if (qword_1006E5508 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4;

  return v0;
}

uint64_t sub_10033EA54()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v4._object = 0x80000001005B6AC0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5 = v1;
  *algn_1006FDC48 = v2;
  qword_1006FDC50 = 0xD00000000000002BLL;
  unk_1006FDC58 = 0x80000001005B6AC0;
  return result;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5.getter()
{
  if (qword_1006E5510 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5;

  return v0;
}

uint64_t sub_10033EBB0()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v4._object = 0x80000001005B6AF0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6 = v1;
  *algn_1006FDC68 = v2;
  qword_1006FDC70 = 0xD00000000000002BLL;
  unk_1006FDC78 = 0x80000001005B6AF0;
  return result;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6.getter()
{
  if (qword_1006E5518 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6;

  return v0;
}

uint64_t sub_10033ED0C()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v4._object = 0x80000001005B6B20;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7 = v1;
  *algn_1006FDC88 = v2;
  qword_1006FDC90 = 0xD00000000000002BLL;
  unk_1006FDC98 = 0x80000001005B6B20;
  return result;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7.getter()
{
  if (qword_1006E5520 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7;

  return v0;
}

uint64_t sub_10033EE68()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v4._object = 0x80000001005B6B50;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8 = v1;
  *algn_1006FDCA8 = v2;
  qword_1006FDCB0 = 0xD00000000000002BLL;
  unk_1006FDCB8 = 0x80000001005B6B50;
  return result;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8.getter()
{
  if (qword_1006E5528 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8;

  return v0;
}

uint64_t sub_10033EFC4()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD00000000000002BLL;
  v4._object = 0x80000001005B5BF0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression9 = v1;
  *algn_1006FDCC8 = v2;
  qword_1006FDCD0 = 0xD00000000000002BLL;
  unk_1006FDCD8 = 0x80000001005B5BF0;
  return result;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression9.unsafeMutableAddressor()
{
  if (qword_1006E5530 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression9;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression9.getter()
{
  if (qword_1006E5530 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression9;

  return v0;
}

uint64_t sub_10033F170()
{
  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v1 = qword_1006EE120;
  v2 = *algn_1006EE128;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_100572A98(v3);

  v4._countAndFlagsBits = 0xD000000000000023;
  v4._object = 0x80000001005B5BC0;
  sub_100572A98(v4);

  static AccessibilityIdentifier.playlistEditorMetadataArtwork4Up = v1;
  *algn_1006FDCE8 = v2;
  qword_1006FDCF0 = 0xD000000000000023;
  unk_1006FDCF8 = 0x80000001005B5BC0;
  return result;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtwork4Up.unsafeMutableAddressor()
{
  if (qword_1006E5538 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtwork4Up;
}

uint64_t static AccessibilityIdentifier.playlistEditorMetadataArtwork4Up.getter()
{
  if (qword_1006E5538 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistEditorMetadataArtwork4Up;

  return v0;
}

uint64_t sub_10033F31C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
  a2[2] = v2;
  a2[3] = v3;
}

uint64_t sub_10033F32C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_100574498();
  }
}

id UIView.withAccessibilityIdentifier(_:)(uint64_t a1, uint64_t a2)
{

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(a1, a2);

  return v5;
}

void UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    v3 = sub_100572898();
  }

  else
  {
    v3 = 0;
  }

  [v2 setAccessibilityIdentifier:v3];
}

uint64_t UIAccessibilityIdentification.musicAccessibilityIdentifier.getter()
{
  v1 = [v0 accessibilityIdentifier];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1005728D8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void (*UIAccessibilityIdentification.musicAccessibilityIdentifier.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[4] = a2;
  v5[5] = v2;
  *v5 = UIAccessibilityIdentification.musicAccessibilityIdentifier.getter();
  v6[1] = v7;
  v6[2] = v8;
  v6[3] = v9;
  return sub_10033F550;
}

void sub_10033F550(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  if (a2)
  {
    sub_10033F5E8(**a1, v4);
    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v3, v4);
    sub_10033F62C(*v2, v2[1]);
  }

  else
  {
    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(**a1, v4);
  }

  free(v2);
}

uint64_t sub_10033F5E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10033F62C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t View.textSuffix(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a4;
  v33 = a7;
  v29 = sub_10056FED8();
  v13 = *(v29 - 8);
  __chkstk_darwin(v29);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a5;
  v42 = a6;
  v30 = &opaque type descriptor for <<opaque return type of View.textSuffix(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = *(OpaqueTypeMetadata2 - 8);
  v31 = OpaqueTypeMetadata2;
  v32 = v17;
  __chkstk_darwin(OpaqueTypeMetadata2);
  v19 = &v28 - v18;
  v20 = a1;
  v21 = a2;
  v22 = v28;
  sub_10056FEC8();
  sub_10056FFC8();
  (*(v13 + 8))(v15, v29);
  v34 = a5;
  v35 = a6;
  v23 = a6;
  v36 = v7;
  v37 = v20;
  v38 = v21;
  v39 = a3 & 1;
  v40 = v22;
  swift_getTupleTypeMetadata2();
  sub_100570AD8();
  swift_getWitnessTable();
  v24 = sub_100570738();
  WitnessTable = swift_getWitnessTable();
  v41 = v24;
  v42 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v41 = a5;
  v42 = v23;
  swift_getOpaqueTypeConformance2();
  v41 = v24;
  v42 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  v26 = v31;
  sub_100570248();
  return (*(v32 + 8))(v19, v26);
}

uint64_t sub_10033F980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v32 = a7;
  v27 = a6;
  v34 = a5;
  v33 = a4;
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v37 = a8;
  v8 = sub_10056F808();
  v35 = *(v8 - 8);
  v36 = v8;
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  sub_100570AD8();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_100570738();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v15 = swift_getWitnessTable();
  v45 = v11;
  v46 = v15;
  v26 = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = *(OpaqueTypeMetadata2 - 8);
  v18 = __chkstk_darwin(OpaqueTypeMetadata2);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v26 - v21;
  v38 = v27;
  v39 = v32;
  v40 = v29;
  v41 = v30;
  v42 = v31;
  v43 = v33 & 1;
  v44 = v34;
  sub_10056F218();
  sub_100570728();
  sub_10056F7E8();
  sub_1005701F8();
  (*(v35 + 8))(v10, v36);
  (*(v12 + 8))(v14, v11);
  v45 = v11;
  v46 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000E6D84(v20, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v24 = *(v17 + 8);
  v24(v20, OpaqueTypeMetadata2);
  sub_1000E6D84(v22, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v24)(v22, OpaqueTypeMetadata2);
}

uint64_t sub_10033FD40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v12 = *(a6 - 8);
  v13 = __chkstk_darwin(a1);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = v23 - v17;
  sub_1000E6D84(v16, v19, v20);
  (*(v12 + 16))(v15, v18, a6);
  v29[0] = v15;
  v29[1] = &v25;
  sub_10002AAC4(a2, a3, a4 & 1);

  v24[0] = a6;
  v24[1] = &type metadata for Text;
  v23[0] = a7;
  v23[1] = &protocol witness table for Text;
  sub_10032EEC4(v29, 2uLL, v24);
  v21 = *(v12 + 8);
  v21(v18, a6);
  sub_10001B5A4(v25, v26, v27);

  return (v21)(v15, a6);
}

uint64_t AccessibilityString.init(_:tableName:bundle:comment:)(uint64_t a1)
{
  v2 = sub_10056CC38();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100572888();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  (*(v4 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  sub_10056CBC8();
  v6 = sub_100572948();
  (*(v4 + 8))(a1, v3);
  return v6;
}

uint64_t sub_1003400C0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, void *, uint64_t, unint64_t))
{
  if (a2)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v12[0] = v8;
  v12[1] = v9;
  v10 = sub_1000C5FB8();

  a5(v12, a3, &type metadata for String, a4, v10);
}

uint64_t Text.accessibilityLabel(_:)()
{
  sub_1000C5FB8();

  v0 = sub_10056FE48();

  return v0;
}

uint64_t static Text.compact(_:)(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 40;
  v4 = _swiftEmptyArrayStorage;
LABEL_2:
  v5 = (v3 + 16 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v7 = *v5;
    v5 += 2;
    ++v1;
    if (v7)
    {
      v18 = v3;
      sub_1000C5FB8();

      v8 = sub_10056FF28();
      v10 = v9;
      v12 = v11;
      v14 = v13;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000D0598(0, *(v4 + 2) + 1, 1, v4);
        v4 = result;
      }

      v16 = *(v4 + 2);
      v15 = *(v4 + 3);
      if (v16 >= v15 >> 1)
      {
        result = sub_1000D0598((v15 > 1), v16 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 2) = v16 + 1;
      v17 = &v4[32 * v16];
      *(v17 + 4) = v8;
      *(v17 + 5) = v10;
      v17[48] = v12 & 1;
      *(v17 + 7) = v14;
      v1 = v6;
      v3 = v18;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t TabIdentifier.accessibilityIdentifier.getter(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 > 4u)
    {
      if (a1 != 5)
      {
        v2 = 0x80000001005B5BA0;
        if (qword_1006E5078 != -1)
        {
          swift_once();
        }

        v7 = qword_1006EE120;

        v14._countAndFlagsBits = 46;
        v14._object = 0xE100000000000000;
        sub_100572A98(v14);

        v5._countAndFlagsBits = 0xD000000000000010;
        goto LABEL_34;
      }

      if (qword_1006E5078 != -1)
      {
        swift_once();
      }

      v1 = 0x762E726142626174;
      v7 = qword_1006EE120;

      v10._countAndFlagsBits = 46;
      v10._object = 0xE100000000000000;
      sub_100572A98(v10);

      v3 = 0x736F656469;
    }

    else
    {
      if (a1 == 3)
      {
        if (qword_1006E5078 != -1)
        {
          swift_once();
        }

        v1 = 0x722E726142626174;
        v7 = qword_1006EE120;

        v8._countAndFlagsBits = 46;
        v8._object = 0xE100000000000000;
        sub_100572A98(v8);

        v2 = 0xEC0000006F696461;
        goto LABEL_33;
      }

      if (qword_1006E5078 != -1)
      {
        swift_once();
      }

      v1 = 0x732E726142626174;
      v7 = qword_1006EE120;

      v13._countAndFlagsBits = 46;
      v13._object = 0xE100000000000000;
      sub_100572A98(v13);

      v3 = 0x6863726165;
    }

LABEL_32:
    v2 = (v3 & 0xFFFFFFFFFFFFLL | 0xED00000000000000);
LABEL_33:
    v5._countAndFlagsBits = v1;
LABEL_34:
    v5._object = v2;
    goto LABEL_35;
  }

  if (!a1)
  {
    if (qword_1006E5078 != -1)
    {
      swift_once();
    }

    v1 = 0x6C2E726142626174;
    v7 = qword_1006EE120;

    v11._countAndFlagsBits = 46;
    v11._object = 0xE100000000000000;
    sub_100572A98(v11);

    v2 = 0xEE00797261726269;
    goto LABEL_33;
  }

  if (a1 == 1)
  {
    if (qword_1006E5078 != -1)
    {
      swift_once();
    }

    v1 = 0x682E726142626174;
    v7 = qword_1006EE120;

    v9._countAndFlagsBits = 46;
    v9._object = 0xE100000000000000;
    sub_100572A98(v9);

    v2 = 0xEB00000000656D6FLL;
    goto LABEL_33;
  }

  v4 = sub_100340C00();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v4) & 1) == 0)
  {
    if (qword_1006E5078 != -1)
    {
      swift_once();
    }

    v1 = 0x622E726142626174;
    v7 = qword_1006EE120;

    v15._countAndFlagsBits = 46;
    v15._object = 0xE100000000000000;
    sub_100572A98(v15);

    v3 = 0x6573776F72;
    goto LABEL_32;
  }

  if (qword_1006E5078 != -1)
  {
    swift_once();
  }

  v7 = qword_1006EE120;

  v12._countAndFlagsBits = 46;
  v12._object = 0xE100000000000000;
  sub_100572A98(v12);

  v5._countAndFlagsBits = 0x6E2E726142626174;
  v5._object = 0xEA00000000007765;
LABEL_35:
  sub_100572A98(v5);

  return v7;
}

void *sub_100340840@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    v7 = sub_100572B88();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1000CF150(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1000CF150((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_100572B58();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_100572A38();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_100572A38();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_100572B88();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1000CF150(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_100572B88();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1000CF150(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1000CF150((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_100572A38();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100340C00()
{
  result = qword_1006EE130;
  if (!qword_1006EE130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE130);
  }

  return result;
}

uint64_t sub_100340C74()
{
  sub_10056F948();
  sub_10056ECA8();
  sub_100340CE0();
  return swift_getWitnessTable();
}

unint64_t sub_100340CE0()
{
  result = qword_1006E68A0;
  if (!qword_1006E68A0)
  {
    sub_10056F948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E68A0);
  }

  return result;
}

uint64_t sub_100340D38()
{
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_100570AD8();
  swift_getWitnessTable();
  sub_100570738();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t static AppReview.requestReview(in:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return sub_10034236C(a1);
}

{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000116F0;

  return sub_1003418D4(a1);
}

uint64_t static AppReview.recordAppOpened()()
{
  v0 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_100572F48();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1001B3FAC(0, 0, v2, &unk_1005959D0, v4);
}

uint64_t sub_100341148()
{
  if (qword_1006E5540 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CB98;

  return StoreReviewGatingController.didEnterForeground()();
}

uint64_t sub_10034122C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001005B6D40 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_100574498();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1003412CC(uint64_t a1)
{
  v2 = sub_100342A90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100341308(uint64_t a1)
{
  v2 = sub_100342A90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100341344@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_100009DCC(&qword_1006EE168);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10000C8CC(a1, a1[3]);
  sub_100342A90();
  sub_100574708();
  if (v2)
  {
    return sub_100010474(a1);
  }

  v9 = sub_1005742A8();
  (*(v6 + 8))(v8, v5);
  result = sub_100010474(a1);
  *a2 = v9 & 1;
  return result;
}

uint64_t sub_1003414A8(void *a1)
{
  v2 = sub_100009DCC(&qword_1006EE178);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000C8CC(a1, a1[3]);
  sub_100342A90();
  sub_100574718();
  sub_100574338();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1003415E0()
{
  v0 = objc_allocWithZone(ICStoreRequestContext);
  v5[4] = sub_1001EB610;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1001D65E4;
  v5[3] = &unk_10069C3E0;
  v1 = _Block_copy(v5);
  v2 = [v0 initWithBlock:v1];
  _Block_release(v1);

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    [objc_allocWithZone(ICAMSBagAdapter) initWithRequestContext:v2];

    v4 = objc_allocWithZone(sub_10056DCC8());
    result = sub_10056DC98();
    qword_1006EE138 = result;
  }

  return result;
}

uint64_t sub_100341710()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006EE140);
  sub_10000C49C(v0, qword_1006EE140);
  return sub_10056DF78();
}

void _s9MusicCore9AppReviewO16recordSongPlayedyyFZ_0()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = sub_100342900();
  v3 = sub_100342954();
  NSUserDefaults.decodeValue<A>(_:forKey:)(&type metadata for AppReview.UsageRequirements, v6);

  v4 = [v0 standardUserDefaults];
  NSUserDefaults.decodeValue<A>(_:forKey:)(&type metadata for AppReview.UsageRequirements, v6);

  if (LOBYTE(v6[0]) == 2 || (v6[0] & 1) == 0)
  {
    v5 = [v0 standardUserDefaults];
    v6[3] = &type metadata for AppReview.UsageRequirements;
    v6[4] = v2;
    v6[5] = v3;
    LOBYTE(v6[0]) = 1;
    NSUserDefaults.encodeValue(_:forKey:)(v6);

    sub_100010474(v6);
  }
}

uint64_t sub_1003418D4(uint64_t a1)
{
  v1[34] = a1;
  sub_100572F08();
  v1[35] = sub_100572EF8();
  v3 = sub_100572E78();
  v1[36] = v3;
  v1[37] = v2;

  return _swift_task_switch(sub_10034196C, v3, v2);
}

uint64_t sub_10034196C()
{
  if (qword_1006E4D40 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  v1 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v1;
  v2 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v2;
  v3 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v3;
  v4 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v4;
  sub_100108D2C(v0 + 16);
  if (*(v0 + 112) == 2)
  {
  }

  else
  {
    v5 = sub_100574498();

    if ((v5 & 1) == 0)
    {

      if (qword_1006E5548 != -1)
      {
        swift_once();
      }

      v13 = sub_10056DF88();
      sub_10000C49C(v13, qword_1006EE140);
      v9 = sub_10056DF68();
      v10 = sub_100573448();
      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_27;
      }

      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "🤩❌ User is not a subscriber";
      goto LABEL_26;
    }
  }

  v6 = [objc_opt_self() sharedPrivacyInfo];
  v7 = [v6 privacyAcknowledgementRequiredForMusic];

  if (v7)
  {

    if (qword_1006E5548 != -1)
    {
      swift_once();
    }

    v8 = sub_10056DF88();
    sub_10000C49C(v8, qword_1006EE140);
    v9 = sub_10056DF68();
    v10 = sub_100573448();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_27;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "🤩❌ User has not accepted GDPR";
LABEL_26:
    _os_log_impl(&_mh_execute_header, v9, v10, v12, v11, 2u);

LABEL_27:

    v18 = *(v0 + 8);

    return v18();
  }

  v14 = [objc_opt_self() standardUserDefaults];
  sub_100342900();
  sub_100342954();
  NSUserDefaults.decodeValue<A>(_:forKey:)(&type metadata for AppReview.UsageRequirements, v0 + 328);

  v15 = *(v0 + 328);
  if (v15 == 2 || (v15 & 1) == 0)
  {

    if (qword_1006E5548 != -1)
    {
      swift_once();
    }

    v17 = sub_10056DF88();
    sub_10000C49C(v17, qword_1006EE140);
    v9 = sub_10056DF68();
    v10 = sub_100573448();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_27;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "🤩❌ User has not played anything yet";
    goto LABEL_26;
  }

  if (qword_1006E5540 != -1)
  {
    swift_once();
  }

  *(v0 + 304) = qword_1006EE138;
  v16 = swift_task_alloc();
  *(v0 + 312) = v16;
  *v16 = v0;
  v16[1] = sub_100341E70;

  return StoreReviewGatingController.canPrompt()();
}

uint64_t sub_100341E70(char a1)
{
  v2 = *v1;
  *(*v1 + 329) = a1;

  v3 = *(v2 + 296);
  v4 = *(v2 + 288);

  return _swift_task_switch(sub_100341F98, v4, v3);
}

uint64_t sub_100341F98()
{
  if (*(v0 + 329) == 1)
  {
    sub_1005723B8();
    if (qword_1006E5548 != -1)
    {
      swift_once();
    }

    v1 = sub_10056DF88();
    sub_10000C49C(v1, qword_1006EE140);
    v2 = sub_10056DF68();
    v3 = sub_100573448();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "🤩 Requesting a review through StoreKit", v4, 2u);
    }

    v5 = swift_task_alloc();
    *(v0 + 320) = v5;
    *v5 = v0;
    v5[1] = sub_1003421EC;

    return StoreReviewGatingController.didPrompt()();
  }

  else
  {

    if (qword_1006E5548 != -1)
    {
      swift_once();
    }

    v6 = sub_10056DF88();
    sub_10000C49C(v6, qword_1006EE140);
    v7 = sub_10056DF68();
    v8 = sub_100573448();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "🤩❌ Review is being gated by AMS", v9, 2u);
    }

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1003421EC()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return _swift_task_switch(sub_10034230C, v3, v2);
}

uint64_t sub_10034230C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10034236C(uint64_t a1)
{
  v1[14] = a1;
  sub_100572F08();
  v1[15] = sub_100572EF8();
  v3 = sub_100572E78();
  v1[16] = v3;
  v1[17] = v2;

  return _swift_task_switch(sub_100342404, v3, v2);
}

void sub_100342404()
{
  sub_1003429A8(v0[14], (v0 + 2));
  if (v0[10] == 1)
  {

    sub_100342A18((v0 + 2));
LABEL_11:
    if (qword_1006E5548 != -1)
    {
      swift_once();
    }

    v7 = sub_10056DF88();
    sub_10000C49C(v7, qword_1006EE140);
    v8 = sub_10056DF68();
    v9 = sub_100573428();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "🤩❌ No windowScene", v10, 2u);
    }

    v11 = v0[1];

    v11();
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    sub_100112B40((v0 + 2));
    goto LABEL_11;
  }

  v2 = Strong;
  v3 = [Strong view];

  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = [v3 window];

  v5 = [v4 windowScene];
  v0[18] = v5;

  sub_100112B40((v0 + 2));
  if (!v5)
  {

    goto LABEL_11;
  }

  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_100342664;

  sub_1003418D4(v5);
}

uint64_t sub_100342664()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_100342784, v3, v2);
}

uint64_t sub_100342784()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003427EC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100342824()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CB98;

  return sub_10034112C();
}

uint64_t sub_1003428E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100342900()
{
  result = qword_1006EE158;
  if (!qword_1006EE158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE158);
  }

  return result;
}

unint64_t sub_100342954()
{
  result = qword_1006EE160;
  if (!qword_1006EE160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE160);
  }

  return result;
}

uint64_t sub_1003429A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E7938);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100342A18(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E7938);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100342A90()
{
  result = qword_1006EE170;
  if (!qword_1006EE170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE170);
  }

  return result;
}

unint64_t sub_100342AF8()
{
  result = qword_1006EE180;
  if (!qword_1006EE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE180);
  }

  return result;
}

unint64_t sub_100342B50()
{
  result = qword_1006EE188;
  if (!qword_1006EE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE188);
  }

  return result;
}

unint64_t sub_100342BA8()
{
  result = qword_1006EE190;
  if (!qword_1006EE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EE190);
  }

  return result;
}

uint64_t static ClassicalBridge.generatePrestoURL(forAlbum:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100571AC8();
  if (v3)
  {
    static ClassicalBridge.generatePrestoURL(type:storeAdamID:)(1, v2, v3, a1);
  }

  else
  {
    sub_1001410C4();
    swift_allocError();
    *v5 = 2;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 2;
    return swift_willThrow();
  }
}

uint64_t static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CB98;

  return (sub_10034679C)(a1, a2);
}

_OWORD *sub_100342D54(void *a1)
{
  v2 = v1;
  v3 = a1[2];
  if (!v3)
  {
    sub_1001EB648();
    swift_allocError();
    *v20 = 0u;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 0;
    *(v20 + 40) = 2;
LABEL_17:
    swift_willThrow();
    return (v19 & 1);
  }

  v4 = a1;
  v5 = a1[4];

  v6 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = v4;
  if (!isUniquelyReferenced_nonNull_native || (v3 - 1) > v4[3] >> 1)
  {
    v4 = sub_1000CF81C(isUniquelyReferenced_nonNull_native, v3, 1, v4);
    v32 = v4;
  }

  sub_1001E8D90(0, 1, 0);
  if (![v2 valueForBagKey:v6])
  {

    sub_1001EB648();
    swift_allocError();
    *v21 = v6;
    *(v21 + 40) = 0;
    goto LABEL_17;
  }

  sub_100573D58();
  swift_unknownObjectRelease();
  sub_100081F38(v31, v30);
  v8 = v4[2];
  result = v6;
  v10 = result;
  v27 = result;
  if (!v8)
  {
LABEL_13:

    sub_100081F38(v30, v29);
    if (swift_dynamicCast())
    {

      sub_100010474(v30);
      sub_100010474(v31);
      v19 = v28;
    }

    else
    {
      sub_1001EB648();
      swift_allocError();
      v23 = v22;
      *v22 = v10;
      sub_100081F38(v30, (v22 + 1));
      *(v23 + 40) = 1;
      swift_willThrow();

LABEL_23:
      sub_100010474(v30);
      sub_100010474(v31);
    }

    return (v19 & 1);
  }

  v11 = 0;
  v12 = result;
  while (v11 < v4[2])
  {
    v13 = v4[v11 + 4];
    sub_100081F38(v30, v29);
    v10 = v13;
    sub_100009DCC(&unk_1006EB150);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_1001EB648();
      swift_allocError();
      v25 = v24;
      *v24 = v10;
      sub_100081F38(v30, (v24 + 1));
      *(v25 + 40) = 1;
      goto LABEL_22;
    }

    v14 = sub_1005728D8();
    if (!*(v28 + 16))
    {

LABEL_21:

      sub_1001EB648();
      swift_allocError();
      *v26 = v10;
      *(v26 + 40) = 0;
LABEL_22:
      swift_willThrow();

      goto LABEL_23;
    }

    v16 = sub_1000EB89C(v14, v15);
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      goto LABEL_21;
    }

    ++v11;
    sub_100081F38(*(v28 + 56) + 32 * v16, v29);

    sub_100010474(v30);

    result = sub_1000F51DC(v29, v30);
    v12 = v10;
    if (v8 == v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

_OWORD *sub_100343120(void *a1)
{
  v2 = v1;
  v3 = a1[2];
  if (!v3)
  {
    sub_1001EB648();
    swift_allocError();
    *v19 = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0;
    *(v19 + 40) = 2;
    return swift_willThrow();
  }

  v4 = a1;
  v5 = a1[4];

  v6 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v4;
  if (!isUniquelyReferenced_nonNull_native || (v3 - 1) > v4[3] >> 1)
  {
    v4 = sub_1000CF81C(isUniquelyReferenced_nonNull_native, v3, 1, v4);
    v31 = v4;
  }

  sub_1001E8D90(0, 1, 0);
  if (![v2 valueForBagKey:v6])
  {

    sub_1001EB648();
    swift_allocError();
    *v20 = v6;
    *(v20 + 40) = 0;
    return swift_willThrow();
  }

  sub_100573D58();
  swift_unknownObjectRelease();
  sub_100081F38(v30, v29);
  v8 = v4[2];
  result = v6;
  v10 = result;
  v26 = result;
  if (v8)
  {
    v11 = 0;
    v12 = result;
    while (v11 < v4[2])
    {
      v13 = v4[v11 + 4];
      sub_100081F38(v29, v28);
      v10 = v13;
      sub_100009DCC(&unk_1006EB150);
      if ((swift_dynamicCast() & 1) == 0)
      {

        sub_1001EB648();
        swift_allocError();
        v24 = v23;
        *v23 = v10;
        sub_100081F38(v29, (v23 + 1));
        *(v24 + 40) = 1;
        goto LABEL_22;
      }

      v14 = sub_1005728D8();
      if (!*(v27 + 16))
      {

LABEL_21:

        sub_1001EB648();
        swift_allocError();
        *v25 = v10;
        *(v25 + 40) = 0;
LABEL_22:
        swift_willThrow();

        goto LABEL_23;
      }

      v16 = sub_1000EB89C(v14, v15);
      v18 = v17;

      if ((v18 & 1) == 0)
      {
        goto LABEL_21;
      }

      ++v11;
      sub_100081F38(*(v27 + 56) + 32 * v16, v28);

      sub_100010474(v29);

      result = sub_1000F51DC(v28, v29);
      v12 = v10;
      if (v8 == v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    sub_100081F38(v29, v28);
    if (swift_dynamicCast())
    {

      sub_100010474(v29);
      sub_100010474(v30);
      return v27;
    }

    else
    {
      sub_1001EB648();
      swift_allocError();
      v22 = v21;
      *v21 = v10;
      sub_100081F38(v29, (v21 + 1));
      *(v22 + 40) = 1;
      swift_willThrow();

LABEL_23:
      sub_100010474(v29);
      return sub_100010474(v30);
    }
  }

  return result;
}

uint64_t sub_1003434E8(uint64_t a1)
{
  v1[18] = a1;
  sub_100572F08();
  v1[19] = sub_100572EF8();
  v3 = sub_100572E78();
  v1[20] = v3;
  v1[21] = v2;

  return _swift_task_switch(sub_100343580, v3, v2);
}

uint64_t sub_100343580()
{
  v1 = [objc_opt_self() sharedApplication];
  v0[22] = v1;
  sub_10056C7E8(v2);
  v4 = v3;
  v0[23] = v3;
  sub_1000F41C8(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_10017F9CC();
  isa = sub_100572688().super.isa;
  v0[24] = isa;

  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_100343734;
  v6 = swift_continuation_init();
  v0[17] = sub_100009DCC(&qword_1006EB0C8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1002A7F80;
  v0[13] = &unk_10069C7F0;
  v0[14] = v6;
  [v1 openURL:v4 options:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100343734()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);

  return _swift_task_switch(sub_10034383C, v2, v1);
}

uint64_t sub_10034383C()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003438BC(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  sub_100009DCC(&qword_1006E5D10);
  v2[20] = swift_task_alloc();
  v3 = sub_10056C8A8();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  sub_100572F08();
  v2[24] = sub_100572EF8();
  v5 = sub_100572E78();
  v2[25] = v5;
  v2[26] = v4;

  return _swift_task_switch(sub_1003439E8, v5, v4);
}

uint64_t sub_1003439E8()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  sub_100573ED8(36);

  v23._countAndFlagsBits = v5;
  v23._object = v3;
  sub_100572A98(v23);
  sub_10056C868();
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    v7 = v0[19];
    v6 = v0[20];
    v8 = v0[18];

    sub_10001036C(v6, &qword_1006E5D10);
    sub_1001410C4();
    swift_allocError();
    *v9 = 0xD000000000000022;
    *(v9 + 8) = 0x80000001005B6EE0;
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    *(v9 + 32) = 1;
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }

  else
  {
    v13 = v0[22];
    v12 = v0[23];
    v15 = v0[20];
    v14 = v0[21];

    (*(v13 + 32))(v12, v15, v14);
    v16 = [objc_opt_self() sharedApplication];
    v0[27] = v16;
    sub_10056C7E8(v17);
    v19 = v18;
    v0[28] = v18;
    sub_1000F41C8(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_10017F9CC();
    isa = sub_100572688().super.isa;
    v0[29] = isa;

    v0[2] = v0;
    v0[7] = v0 + 30;
    v0[3] = sub_100343D14;
    v21 = swift_continuation_init();
    v0[17] = sub_100009DCC(&qword_1006EB0C8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1002A7F80;
    v0[13] = &unk_10069C818;
    v0[14] = v21;
    [v16 openURL:v19 options:isa completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_100343D14()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);

  return _swift_task_switch(sub_100343E1C, v2, v1);
}

uint64_t sub_100343E1C()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0[23];
  v5 = v0[21];
  v6 = v0[22];

  (*(v6 + 8))(v4, v5);

  v7 = v0[1];

  return v7();
}

void sub_100343EDC(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 presentedViewController];
  if (v4)
  {
    while (1)
    {
      v5 = v4;
      if (([v4 canPresentViewControllers] & 1) == 0)
      {
        break;
      }

      v4 = [v5 presentedViewController];
      v3 = v5;
      if (!v4)
      {
        goto LABEL_7;
      }
    }
  }

  v5 = v3;
LABEL_7:
  [v5 presentViewController:a2 animated:1 completion:0];
}

void static ClassicalBridge.generatePrestoURL(type:storeAdamID:)(int a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a1;
  v62 = a4;
  v7 = sub_100009DCC(&qword_1006E5D10);
  __chkstk_darwin(v7 - 8);
  v9 = &v55 - v8;
  if (qword_1006E4E08 != -1)
  {
    swift_once();
  }

  sub_100009DCC(&qword_1006E8490);
  UnfairLock.locked<A>(_:)(sub_1000C5F9C);
  v10 = v68;
  if (v68)
  {
    v59 = a3;
    v60 = a2;
    sub_100009DCC(&qword_1006E6248);
    inited = swift_initStackObject();
    v61 = xmmword_10057B500;
    *(inited + 16) = xmmword_10057B500;
    v12 = ICURLBagKeyMusicCommon;
    *(inited + 32) = ICURLBagKeyMusicCommon;
    v13 = qword_1006E5558;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = qword_1006EE1A8;
    *(inited + 40) = qword_1006EE1A8;
    v16 = v15;
    v17 = sub_100342D54(inited);
    if (v4)
    {

      swift_setDeallocating();
      type metadata accessor for ICURLBagKey(0);
      swift_arrayDestroy();
    }

    else
    {
      v19 = v17;
      swift_setDeallocating();
      type metadata accessor for ICURLBagKey(0);
      v58 = v20;
      swift_arrayDestroy();
      if (v19)
      {
        v21 = swift_initStackObject();
        v57 = xmmword_100580F90;
        *(v21 + 16) = xmmword_100580F90;
        *(v21 + 32) = v14;
        v22 = qword_1006E5568;
        v56 = v14;
        if (v22 != -1)
        {
          swift_once();
        }

        v23 = qword_1006EE1B8;
        *(v21 + 40) = qword_1006EE1B8;
        v24 = qword_1006E5570;
        v25 = v23;
        if (v24 != -1)
        {
          swift_once();
        }

        v26 = qword_1006EE1C0;
        *(v21 + 48) = qword_1006EE1C0;
        v27 = v26;
        sub_100343120(v21);

        swift_setDeallocating();
        swift_arrayDestroy();
        v29 = swift_initStackObject();
        *(v29 + 16) = v57;
        v30 = v56;
        *(v29 + 32) = v56;
        *(v29 + 40) = v25;
        v31 = qword_1006E5578;
        *&v57 = v30;
        v32 = v25;
        if (v31 != -1)
        {
          swift_once();
        }

        v33 = qword_1006EE1C8;
        *(v29 + 48) = qword_1006EE1C8;
        v34 = v33;
        sub_100343120(v29);

        swift_setDeallocating();
        swift_arrayDestroy();
        v35 = swift_initStackObject();
        *(v35 + 16) = v61;
        v36 = v57;
        *(v35 + 32) = v57;
        v37 = qword_1006E5560;
        v38 = v36;
        if (v37 != -1)
        {
          swift_once();
        }

        v39 = qword_1006EE1B0;
        *(v35 + 40) = qword_1006EE1B0;
        v40 = v39;
        v41 = sub_100343120(v35);
        v43 = v42;
        swift_setDeallocating();
        swift_arrayDestroy();
        v58 = v41;
        v68 = v41;
        v69 = v43;
        *&v61 = v43;
        v66 = 0x7D646E696B7BLL;
        v67 = 0xE600000000000000;
        v44 = 0x747369747261;
        if (v63)
        {
          v44 = 0x6D75626C61;
          v45 = 0xE500000000000000;
        }

        else
        {
          v45 = 0xE600000000000000;
        }

        v64 = v44;
        v65 = v45;
        sub_1000C5FB8();
        v46 = sub_100573CE8();
        v48 = v47;

        v68 = v46;
        v69 = v48;
        v66 = 2103732603;
        v67 = 0xE400000000000000;
        v49 = v59;
        v64 = v60;
        v65 = v59;
        sub_100573CE8();

        sub_10056C868();

        v50 = sub_10056C8A8();
        v51 = *(v50 - 8);
        if ((*(v51 + 48))(v9, 1, v50) == 1)
        {
          sub_10001036C(v9, &qword_1006E5D10);
          sub_1001410C4();
          swift_allocError();
          v52 = v60;
          v53 = v61;
          *v54 = v58;
          *(v54 + 8) = v53;
          *(v54 + 16) = v52;
          *(v54 + 24) = v49;
          *(v54 + 32) = 1;
          swift_willThrow();
        }

        else
        {

          (*(v51 + 32))(v62, v9, v50);
        }
      }

      else
      {
        sub_1001410C4();
        swift_allocError();
        *v28 = 1;
        *(v28 + 8) = 0;
        *(v28 + 16) = 0;
        *(v28 + 24) = 0;
        *(v28 + 32) = 2;
        swift_willThrow();
      }
    }
  }

  else
  {
    sub_1001410C4();
    swift_allocError();
    *v18 = 0u;
    *(v18 + 16) = 0u;
    *(v18 + 32) = 2;
    swift_willThrow();
  }
}

uint64_t ClassicalBridge.Type.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6D75626C61;
  }

  else
  {
    return 0x747369747261;
  }
}

MusicCore::ClassicalBridge::Type_optional __swiftcall ClassicalBridge.Type.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_100685BB8;
  v6._object = object;
  v3 = sub_100574238(v2, v6);

  if (v3 == 1)
  {
    v4.value = MusicCore_ClassicalBridge_Type_album;
  }

  else
  {
    v4.value = MusicCore_ClassicalBridge_Type_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100344790(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D75626C61;
  }

  else
  {
    v3 = 0x747369747261;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6D75626C61;
  }

  else
  {
    v5 = 0x747369747261;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100574498();
  }

  return v8 & 1;
}

Swift::Int sub_100344830()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_1003448AC()
{
  sub_1005729F8();
}

Swift::Int sub_100344914()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_10034498C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100685BB8;
  v8._object = v3;
  v5 = sub_100574238(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1003449EC(uint64_t *a1@<X8>)
{
  v2 = 0x747369747261;
  if (*v1)
  {
    v2 = 0x6D75626C61;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t static ClassicalBridge.generatePrestoURL(forModelObject:)@<X0>(uint64_t a1@<X8>)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = v2;
  if (v2 || (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) != 0))
  {
    v4 = [v2 identifiers];
    v5 = [v4 universalStore];

    if (v5)
    {
      [v5 adamID];
      v6 = sub_100574408();
      v8 = v7;
      swift_unknownObjectRelease();
      static ClassicalBridge.generatePrestoURL(type:storeAdamID:)(v3 != 0, v6, v8, a1);
    }

    sub_1001410C4();
    swift_allocError();
    v11 = 4;
  }

  else
  {
    sub_1001410C4();
    swift_allocError();
    v11 = 3;
  }

  *v10 = v11;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 2;
  return swift_willThrow();
}

uint64_t sub_100344BD8()
{
  result = swift_slowAlloc();
  qword_1006EE1A0 = result;
  return result;
}

char *sub_100344C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v5[OBJC_IVAR____TtCE9MusicCoreCSo28SKStoreProductViewControllerP33_2120E9B2F4E5B8C48C07BDF209A3517523StoreProductCoordinator_applicationRecordObserver] = 0;
  swift_unknownObjectWeakInit();
  v11 = &v5[OBJC_IVAR____TtCE9MusicCoreCSo28SKStoreProductViewControllerP33_2120E9B2F4E5B8C48C07BDF209A3517523StoreProductCoordinator_app];
  *v11 = a1;
  *(v11 + 1) = a2;
  *(v11 + 2) = a3;
  v12 = &v5[OBJC_IVAR____TtCE9MusicCoreCSo28SKStoreProductViewControllerP33_2120E9B2F4E5B8C48C07BDF209A3517523StoreProductCoordinator_applicationInstalledBlock];
  *v12 = a4;
  *(v12 + 1) = a5;
  v19.receiver = v5;
  v19.super_class = _s23StoreProductCoordinatorCMa();

  v13 = objc_msgSendSuper2(&v19, "init");
  v14 = *NSNotificationName.applicationRegistered.unsafeMutableAddressor();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = v14;

  type metadata accessor for NotificationObserver();
  swift_allocObject();

  v17 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v16, 0, 1, 0, sub_100347DDC, v15);

  *&v13[OBJC_IVAR____TtCE9MusicCoreCSo28SKStoreProductViewControllerP33_2120E9B2F4E5B8C48C07BDF209A3517523StoreProductCoordinator_applicationRecordObserver] = v17;

  return v13;
}

void sub_100344D84()
{
  v0 = sub_100009DCC(&qword_1006E6420);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtCE9MusicCoreCSo28SKStoreProductViewControllerP33_2120E9B2F4E5B8C48C07BDF209A3517523StoreProductCoordinator_app);
    v6 = *(Strong + OBJC_IVAR____TtCE9MusicCoreCSo28SKStoreProductViewControllerP33_2120E9B2F4E5B8C48C07BDF209A3517523StoreProductCoordinator_app + 8);

    LOBYTE(v5) = static ApplicationRecordUtilities.isApplicationInstalled(identifier:)(v5, v6);

    if (v5)
    {
      v7 = sub_100572F48();
      (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
      v8 = swift_allocObject();
      v8[2] = 0;
      v8[3] = 0;
      v8[4] = v4;
      v9 = v4;
      sub_1001B3FAC(0, 0, v2, &unk_100595E40, v8);

      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        v12 = [v10 presentingViewController];

        if (v12)
        {
          [v12 dismissViewControllerAnimated:1 completion:0];
        }
      }
    }
  }
}

uint64_t sub_100344F64()
{
  v1 = v0[3] + OBJC_IVAR____TtCE9MusicCoreCSo28SKStoreProductViewControllerP33_2120E9B2F4E5B8C48C07BDF209A3517523StoreProductCoordinator_applicationInstalledBlock;
  v2 = *v1;
  v0[4] = *(v1 + 8);

  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_100345070;

  return v5();
}

uint64_t sub_100345070()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1003451E4;
  }

  else
  {
    v2 = sub_100345184;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100345184()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003451E4()
{
  v14 = v0;

  if (qword_1006E5580 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, static Logger.classicalBridge);
  swift_errorRetain();
  v2 = sub_10056DF68();
  v3 = sub_100573428();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[6];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E9B60);
    v8 = sub_100572978();
    v10 = sub_1000C9784(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Could not execute applicationInstalledBlock, error: %s", v6, 0xCu);
    sub_100010474(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}